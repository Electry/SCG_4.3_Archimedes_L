.class Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2$5;
.super Ljava/lang/Object;
.source "PhotoSyncPerformerV2.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor$PhotoVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;->streamPortraitRestore(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactPhotoRestoreRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;

.field private final synthetic val$ops:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2$5;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2$5;->val$ops:Ljava/util/ArrayList;

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisit(Ljava/lang/String;[B)V
    .locals 6
    .param p1, "sid"    # Ljava/lang/String;
    .param p2, "photoBytes"    # [B

    .prologue
    .line 346
    array-length v1, p2

    int-to-long v2, v1

    const-wide/32 v4, 0x100000

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 355
    :goto_0
    return-void

    .line 350
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2$5;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2$5;->val$ops:Ljava/util/ArrayList;

    # invokes: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;->saveSinglePhoto(Ljava/util/List;Ljava/lang/String;[B)V
    invoke-static {v1, v2, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;->access$8(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;Ljava/util/List;Ljava/lang/String;[B)V
    :try_end_0
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 351
    :catch_0
    move-exception v0

    .line 352
    .local v0, "e":Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;->printStackTrace()V

    .line 353
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2$5;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;->access$5(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;I)V

    goto :goto_0
.end method
