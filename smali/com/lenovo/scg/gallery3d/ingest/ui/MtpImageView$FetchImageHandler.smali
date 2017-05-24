.class Lcom/lenovo/scg/gallery3d/ingest/ui/MtpImageView$FetchImageHandler;
.super Landroid/os/Handler;
.source "MtpImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ingest/ui/MtpImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FetchImageHandler"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "l"    # Landroid/os/Looper;

    .prologue
    .line 186
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 187
    return-void
.end method

.method public static createOnNewThread()Lcom/lenovo/scg/gallery3d/ingest/ui/MtpImageView$FetchImageHandler;
    .locals 3

    .prologue
    .line 190
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MtpImageView Fetch"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 191
    .local v0, "t":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 192
    new-instance v1, Lcom/lenovo/scg/gallery3d/ingest/ui/MtpImageView$FetchImageHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/lenovo/scg/gallery3d/ingest/ui/MtpImageView$FetchImageHandler;-><init>(Landroid/os/Looper;)V

    return-object v1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 198
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/ingest/ui/MtpImageView;

    .line 199
    .local v2, "parent":Lcom/lenovo/scg/gallery3d/ingest/ui/MtpImageView;
    if-nez v2, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    # getter for: Lcom/lenovo/scg/gallery3d/ingest/ui/MtpImageView;->mFetchLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ingest/ui/MtpImageView;->access$100(Lcom/lenovo/scg/gallery3d/ingest/ui/MtpImageView;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 203
    const/4 v4, 0x0

    :try_start_0
    # setter for: Lcom/lenovo/scg/gallery3d/ingest/ui/MtpImageView;->mFetchPending:Z
    invoke-static {v2, v4}, Lcom/lenovo/scg/gallery3d/ingest/ui/MtpImageView;->access$202(Lcom/lenovo/scg/gallery3d/ingest/ui/MtpImageView;Z)Z

    .line 204
    # getter for: Lcom/lenovo/scg/gallery3d/ingest/ui/MtpImageView;->mFetchDevice:Landroid/mtp/MtpDevice;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ingest/ui/MtpImageView;->access$300(Lcom/lenovo/scg/gallery3d/ingest/ui/MtpImageView;)Landroid/mtp/MtpDevice;

    move-result-object v0

    .line 205
    .local v0, "device":Landroid/mtp/MtpDevice;
    # getter for: Lcom/lenovo/scg/gallery3d/ingest/ui/MtpImageView;->mFetchObjectInfo:Landroid/mtp/MtpObjectInfo;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ingest/ui/MtpImageView;->access$400(Lcom/lenovo/scg/gallery3d/ingest/ui/MtpImageView;)Landroid/mtp/MtpObjectInfo;

    move-result-object v1

    .line 206
    .local v1, "objectInfo":Landroid/mtp/MtpObjectInfo;
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 207
    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {v2, v0, v1}, Lcom/lenovo/scg/gallery3d/ingest/ui/MtpImageView;->fetchMtpImageDataFromDevice(Landroid/mtp/MtpDevice;Landroid/mtp/MtpObjectInfo;)Ljava/lang/Object;

    move-result-object v3

    .line 209
    .local v3, "result":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 210
    # getter for: Lcom/lenovo/scg/gallery3d/ingest/ui/MtpImageView;->mFetchLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ingest/ui/MtpImageView;->access$100(Lcom/lenovo/scg/gallery3d/ingest/ui/MtpImageView;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 211
    :try_start_1
    # getter for: Lcom/lenovo/scg/gallery3d/ingest/ui/MtpImageView;->mFetchObjectInfo:Landroid/mtp/MtpObjectInfo;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ingest/ui/MtpImageView;->access$400(Lcom/lenovo/scg/gallery3d/ingest/ui/MtpImageView;)Landroid/mtp/MtpObjectInfo;

    move-result-object v4

    if-eq v4, v1, :cond_2

    monitor-exit v5

    goto :goto_0

    .line 216
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 206
    .end local v0    # "device":Landroid/mtp/MtpDevice;
    .end local v1    # "objectInfo":Landroid/mtp/MtpObjectInfo;
    .end local v3    # "result":Ljava/lang/Object;
    :catchall_1
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 212
    .restart local v0    # "device":Landroid/mtp/MtpDevice;
    .restart local v1    # "objectInfo":Landroid/mtp/MtpObjectInfo;
    .restart local v3    # "result":Ljava/lang/Object;
    :cond_2
    :try_start_3
    # setter for: Lcom/lenovo/scg/gallery3d/ingest/ui/MtpImageView;->mFetchResult:Ljava/lang/Object;
    invoke-static {v2, v3}, Lcom/lenovo/scg/gallery3d/ingest/ui/MtpImageView;->access$502(Lcom/lenovo/scg/gallery3d/ingest/ui/MtpImageView;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const/4 v4, 0x0

    # setter for: Lcom/lenovo/scg/gallery3d/ingest/ui/MtpImageView;->mFetchDevice:Landroid/mtp/MtpDevice;
    invoke-static {v2, v4}, Lcom/lenovo/scg/gallery3d/ingest/ui/MtpImageView;->access$302(Lcom/lenovo/scg/gallery3d/ingest/ui/MtpImageView;Landroid/mtp/MtpDevice;)Landroid/mtp/MtpDevice;

    .line 214
    const/4 v4, 0x0

    # setter for: Lcom/lenovo/scg/gallery3d/ingest/ui/MtpImageView;->mFetchObjectInfo:Landroid/mtp/MtpObjectInfo;
    invoke-static {v2, v4}, Lcom/lenovo/scg/gallery3d/ingest/ui/MtpImageView;->access$402(Lcom/lenovo/scg/gallery3d/ingest/ui/MtpImageView;Landroid/mtp/MtpObjectInfo;)Landroid/mtp/MtpObjectInfo;

    .line 215
    # getter for: Lcom/lenovo/scg/gallery3d/ingest/ui/MtpImageView;->sFetchCompleteHandler:Lcom/lenovo/scg/gallery3d/ingest/ui/MtpImageView$ShowImageHandler;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/ingest/ui/MtpImageView;->access$700()Lcom/lenovo/scg/gallery3d/ingest/ui/MtpImageView$ShowImageHandler;

    move-result-object v4

    # getter for: Lcom/lenovo/scg/gallery3d/ingest/ui/MtpImageView;->sFetchCompleteHandler:Lcom/lenovo/scg/gallery3d/ingest/ui/MtpImageView$ShowImageHandler;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/ingest/ui/MtpImageView;->access$700()Lcom/lenovo/scg/gallery3d/ingest/ui/MtpImageView$ShowImageHandler;

    move-result-object v6

    const/4 v7, 0x0

    # getter for: Lcom/lenovo/scg/gallery3d/ingest/ui/MtpImageView;->mWeakReference:Ljava/lang/ref/WeakReference;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ingest/ui/MtpImageView;->access$600(Lcom/lenovo/scg/gallery3d/ingest/ui/MtpImageView;)Ljava/lang/ref/WeakReference;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/lenovo/scg/gallery3d/ingest/ui/MtpImageView$ShowImageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lenovo/scg/gallery3d/ingest/ui/MtpImageView$ShowImageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 216
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
