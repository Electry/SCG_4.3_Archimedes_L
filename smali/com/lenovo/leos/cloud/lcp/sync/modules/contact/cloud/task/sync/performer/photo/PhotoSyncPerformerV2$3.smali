.class Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2$3;
.super Ljava/lang/Object;
.source "PhotoSyncPerformerV2.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$RawContactVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;->fetchRawContact(Ljava/util/Map;Ljava/lang/StringBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;

.field private final synthetic val$rawContactMap:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2$3;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2$3;->val$rawContactMap:Ljava/util/Map;

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisit(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;II)Z
    .locals 2
    .param p1, "contact"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;
    .param p2, "cur"    # I
    .param p3, "total"    # I

    .prologue
    .line 181
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2$3;->val$rawContactMap:Ljava/util/Map;

    iget v1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->cid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2$3;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
