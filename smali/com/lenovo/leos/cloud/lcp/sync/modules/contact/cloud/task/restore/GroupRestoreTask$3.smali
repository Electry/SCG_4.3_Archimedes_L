.class Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/GroupRestoreTask$3;
.super Ljava/lang/Object;
.source "GroupRestoreTask.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/GroupRestoreTask;->buildRestoreDiff(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupRestoreRequest;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/GroupRestoreTask;

.field private final synthetic val$requestBody:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupRestoreRequest;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/GroupRestoreTask;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupRestoreRequest;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/GroupRestoreTask$3;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/GroupRestoreTask;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/GroupRestoreTask$3;->val$requestBody:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupRestoreRequest;

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisit(Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/GroupRestoreTask$3;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/GroupRestoreTask;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/GroupRestoreTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    const/4 v0, 0x0

    .line 216
    :goto_0
    return v0

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/GroupRestoreTask$3;->val$requestBody:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupRestoreRequest;

    const-string/jumbo v1, "sid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupRestoreRequest;->addGroup(Ljava/lang/String;)V

    .line 216
    const/4 v0, 0x1

    goto :goto_0
.end method
