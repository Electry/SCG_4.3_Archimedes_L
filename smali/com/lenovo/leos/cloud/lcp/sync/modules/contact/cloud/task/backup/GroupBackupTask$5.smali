.class Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/GroupBackupTask$5;
.super Ljava/lang/Object;
.source "GroupBackupTask.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/GroupBackupTask;->buildDiffGroups(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/GroupBackupRequest;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/GroupBackupTask;

.field private final synthetic val$builder:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/GroupBackupTask;Ljava/lang/StringBuilder;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/GroupBackupTask$5;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/GroupBackupTask;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/GroupBackupTask$5;->val$builder:Ljava/lang/StringBuilder;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisit(Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 185
    const-string/jumbo v2, "sid"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, "groupSid":Ljava/lang/String;
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/GroupBackupTask$5;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/GroupBackupTask;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/GroupBackupTask;->sid2cidMap:Ljava/util/Map;
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/GroupBackupTask;->access$7(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/GroupBackupTask;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 187
    .local v0, "cid":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 188
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/GroupBackupTask$5;->val$builder:Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/GroupBackupTask$5;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/GroupBackupTask;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/GroupBackupTask;->sid2cidMap:Ljava/util/Map;
    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/GroupBackupTask;->access$7(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/GroupBackupTask;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 191
    :cond_0
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/GroupBackupTask$5;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/GroupBackupTask;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/GroupBackupTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method
