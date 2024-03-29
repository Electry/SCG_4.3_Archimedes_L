.class final Lcom/lenovo/scg/gallery3d/ingest/IngestService$ScannerClient;
.super Ljava/lang/Object;
.source "IngestService.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ingest/IngestService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ScannerClient"
.end annotation


# instance fields
.field mConnected:Z

.field mLock:Ljava/lang/Object;

.field mPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mScannerConnection:Landroid/media/MediaScannerConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestService$ScannerClient;->mPaths:Ljava/util/ArrayList;

    .line 287
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestService$ScannerClient;->mLock:Ljava/lang/Object;

    .line 290
    new-instance v0, Landroid/media/MediaScannerConnection;

    invoke-direct {v0, p1, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestService$ScannerClient;->mScannerConnection:Landroid/media/MediaScannerConnection;

    .line 291
    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 5

    .prologue
    .line 306
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestService$ScannerClient;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 307
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestService$ScannerClient;->mConnected:Z

    .line 308
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestService$ScannerClient;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 309
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestService$ScannerClient;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 310
    .local v1, "path":Ljava/lang/String;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestService$ScannerClient;->mScannerConnection:Landroid/media/MediaScannerConnection;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 314
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "path":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 312
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestService$ScannerClient;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 314
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 315
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 319
    return-void
.end method

.method public scanPath(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 294
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestService$ScannerClient;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 295
    :try_start_0
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestService$ScannerClient;->mConnected:Z

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestService$ScannerClient;->mScannerConnection:Landroid/media/MediaScannerConnection;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :goto_0
    monitor-exit v1

    .line 302
    return-void

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestService$ScannerClient;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestService$ScannerClient;->mScannerConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    goto :goto_0

    .line 301
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
