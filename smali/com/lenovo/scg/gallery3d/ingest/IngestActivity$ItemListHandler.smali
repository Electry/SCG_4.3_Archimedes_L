.class Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$ItemListHandler;
.super Landroid/os/Handler;
.source "IngestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ItemListHandler"
.end annotation


# static fields
.field public static final MSG_BULK_CHECKED_CHANGE:I = 0x3

.field public static final MSG_NOTIFY_CHANGED:I = 0x2

.field public static final MSG_PROGRESS_HIDE:I = 0x1

.field public static final MSG_PROGRESS_UPDATE:I


# instance fields
.field mParentReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;)V
    .locals 1
    .param p1, "parent"    # Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;

    .prologue
    .line 504
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 505
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$ItemListHandler;->mParentReference:Ljava/lang/ref/WeakReference;

    .line 506
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 509
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$ItemListHandler;->mParentReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;

    .line 510
    .local v0, "parent":Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;
    if-eqz v0, :cond_0

    # getter for: Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mActive:Z
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->access$1200(Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 527
    :cond_0
    :goto_0
    return-void

    .line 511
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 516
    :pswitch_0
    # invokes: Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->updateProgressDialog()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->access$1400(Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;)V

    goto :goto_0

    .line 513
    :pswitch_1
    # invokes: Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->cleanupProgressDialog()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->access$1300(Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;)V

    goto :goto_0

    .line 519
    :pswitch_2
    # invokes: Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->UiThreadNotifyIndexChanged()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->access$1500(Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;)V

    goto :goto_0

    .line 522
    :pswitch_3
    # getter for: Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mPositionMappingCheckBroker:Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$PositionMappingCheckBroker;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->access$300(Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;)Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$PositionMappingCheckBroker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$PositionMappingCheckBroker;->onBulkCheckedChange()V

    goto :goto_0

    .line 511
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
