.class Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask$1$1;
.super Ljava/lang/Object;
.source "CalllogBackupTask.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/CalllogDao$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask$1;->onVisit(FLjava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask$1;

.field private final synthetic val$phoneList:[Ljava/lang/String;

.field private final synthetic val$requestBody:Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogBackupRequest;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask$1;[Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogBackupRequest;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask$1$1;->this$1:Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask$1;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask$1$1;->val$phoneList:[Ljava/lang/String;

    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask$1$1;->val$requestBody:Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogBackupRequest;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisit(Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;II)Z
    .locals 2
    .param p1, "calllog"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;
    .param p2, "cur"    # I
    .param p3, "total"    # I

    .prologue
    .line 149
    iget-object v1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;->number:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v0, ""

    .line 150
    .local v0, "number":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask$1$1;->val$phoneList:[Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask$1$1;->val$requestBody:Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogBackupRequest;

    invoke-virtual {v1, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogBackupRequest;->addCalllog(Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;)V

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask$1$1;->this$1:Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask$1;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask;
    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask$1;->access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask$1;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_1
    return v1

    .line 149
    .end local v0    # "number":Ljava/lang/String;
    :cond_1
    iget-object v0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;->number:Ljava/lang/String;

    goto :goto_0

    .line 153
    .restart local v0    # "number":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method
