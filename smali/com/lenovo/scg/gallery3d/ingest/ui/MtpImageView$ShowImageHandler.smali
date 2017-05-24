.class Lcom/lenovo/scg/gallery3d/ingest/ui/MtpImageView$ShowImageHandler;
.super Landroid/os/Handler;
.source "MtpImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ingest/ui/MtpImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShowImageHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 220
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/ingest/ui/MtpImageView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/ingest/ui/MtpImageView$1;

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ingest/ui/MtpImageView$ShowImageHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 225
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ingest/ui/MtpImageView;

    .line 226
    .local v0, "parent":Lcom/lenovo/scg/gallery3d/ingest/ui/MtpImageView;
    if-nez v0, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    # getter for: Lcom/lenovo/scg/gallery3d/ingest/ui/MtpImageView;->mFetchLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ingest/ui/MtpImageView;->access$100(Lcom/lenovo/scg/gallery3d/ingest/ui/MtpImageView;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 229
    :try_start_0
    # getter for: Lcom/lenovo/scg/gallery3d/ingest/ui/MtpImageView;->mFetchResult:Ljava/lang/Object;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ingest/ui/MtpImageView;->access$500(Lcom/lenovo/scg/gallery3d/ingest/ui/MtpImageView;)Ljava/lang/Object;

    move-result-object v1

    .line 230
    .local v1, "result":Ljava/lang/Object;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    if-eqz v1, :cond_0

    .line 232
    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ingest/ui/MtpImageView;->onMtpImageDataFetchedFromDevice(Ljava/lang/Object;)V

    goto :goto_0

    .line 230
    .end local v1    # "result":Ljava/lang/Object;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
