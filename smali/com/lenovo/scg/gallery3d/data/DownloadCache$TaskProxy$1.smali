.class Lcom/lenovo/scg/gallery3d/data/DownloadCache$TaskProxy$1;
.super Ljava/lang/Object;
.source "DownloadCache.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/util/ThreadPool$CancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/data/DownloadCache$TaskProxy;->get(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Lcom/lenovo/scg/gallery3d/data/DownloadCache$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/data/DownloadCache$TaskProxy;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/data/DownloadCache$TaskProxy;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache$TaskProxy$1;->this$0:Lcom/lenovo/scg/gallery3d/data/DownloadCache$TaskProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .prologue
    .line 378
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache$TaskProxy$1;->this$0:Lcom/lenovo/scg/gallery3d/data/DownloadCache$TaskProxy;

    # getter for: Lcom/lenovo/scg/gallery3d/data/DownloadCache$TaskProxy;->mTask:Lcom/lenovo/scg/gallery3d/data/DownloadCache$DownloadTask;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/data/DownloadCache$TaskProxy;->access$300(Lcom/lenovo/scg/gallery3d/data/DownloadCache$TaskProxy;)Lcom/lenovo/scg/gallery3d/data/DownloadCache$DownloadTask;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache$TaskProxy$1;->this$0:Lcom/lenovo/scg/gallery3d/data/DownloadCache$TaskProxy;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/data/DownloadCache$DownloadTask;->removeProxy(Lcom/lenovo/scg/gallery3d/data/DownloadCache$TaskProxy;)V

    .line 379
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache$TaskProxy$1;->this$0:Lcom/lenovo/scg/gallery3d/data/DownloadCache$TaskProxy;

    monitor-enter v1

    .line 380
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache$TaskProxy$1;->this$0:Lcom/lenovo/scg/gallery3d/data/DownloadCache$TaskProxy;

    const/4 v2, 0x1

    # setter for: Lcom/lenovo/scg/gallery3d/data/DownloadCache$TaskProxy;->mIsCancelled:Z
    invoke-static {v0, v2}, Lcom/lenovo/scg/gallery3d/data/DownloadCache$TaskProxy;->access$702(Lcom/lenovo/scg/gallery3d/data/DownloadCache$TaskProxy;Z)Z

    .line 381
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache$TaskProxy$1;->this$0:Lcom/lenovo/scg/gallery3d/data/DownloadCache$TaskProxy;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 382
    monitor-exit v1

    .line 383
    return-void

    .line 382
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
