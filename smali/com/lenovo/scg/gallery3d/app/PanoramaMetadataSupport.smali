.class public Lcom/lenovo/scg/gallery3d/app/PanoramaMetadataSupport;
.super Ljava/lang/Object;
.source "PanoramaMetadataSupport.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lenovo/scg/gallery3d/util/FutureListener",
        "<",
        "Lcom/lenovo/scg/gallery3d/util/LightCycleHelper$PanoramaMetadata;",
        ">;"
    }
.end annotation


# instance fields
.field private mCallbacksWaiting:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/data/MediaObject$PanoramaSupportCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mGetPanoMetadataTask:Lcom/lenovo/scg/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/scg/gallery3d/util/Future",
            "<",
            "Lcom/lenovo/scg/gallery3d/util/LightCycleHelper$PanoramaMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private mLock:Ljava/lang/Object;

.field private mMediaObject:Lcom/lenovo/scg/gallery3d/data/MediaObject;

.field private mPanoramaMetadata:Lcom/lenovo/scg/gallery3d/util/LightCycleHelper$PanoramaMetadata;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/data/MediaObject;)V
    .locals 1
    .param p1, "mediaObject"    # Lcom/lenovo/scg/gallery3d/data/MediaObject;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PanoramaMetadataSupport;->mLock:Ljava/lang/Object;

    .line 46
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/PanoramaMetadataSupport;->mMediaObject:Lcom/lenovo/scg/gallery3d/data/MediaObject;

    .line 47
    return-void
.end method


# virtual methods
.method public clearCachedValues()V
    .locals 6

    .prologue
    .line 65
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PanoramaMetadataSupport;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 66
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PanoramaMetadataSupport;->mPanoramaMetadata:Lcom/lenovo/scg/gallery3d/util/LightCycleHelper$PanoramaMetadata;

    if-eqz v2, :cond_1

    .line 67
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PanoramaMetadataSupport;->mPanoramaMetadata:Lcom/lenovo/scg/gallery3d/util/LightCycleHelper$PanoramaMetadata;

    .line 76
    :cond_0
    :goto_0
    monitor-exit v3

    .line 77
    return-void

    .line 68
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PanoramaMetadataSupport;->mGetPanoMetadataTask:Lcom/lenovo/scg/gallery3d/util/Future;

    if-eqz v2, :cond_0

    .line 69
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PanoramaMetadataSupport;->mGetPanoMetadataTask:Lcom/lenovo/scg/gallery3d/util/Future;

    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/util/Future;->cancel()V

    .line 70
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PanoramaMetadataSupport;->mCallbacksWaiting:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/data/MediaObject$PanoramaSupportCallback;

    .line 71
    .local v0, "cb":Lcom/lenovo/scg/gallery3d/data/MediaObject$PanoramaSupportCallback;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PanoramaMetadataSupport;->mMediaObject:Lcom/lenovo/scg/gallery3d/data/MediaObject;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v0, v2, v4, v5}, Lcom/lenovo/scg/gallery3d/data/MediaObject$PanoramaSupportCallback;->panoramaInfoAvailable(Lcom/lenovo/scg/gallery3d/data/MediaObject;ZZ)V

    goto :goto_1

    .line 76
    .end local v0    # "cb":Lcom/lenovo/scg/gallery3d/data/MediaObject$PanoramaSupportCallback;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 73
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    const/4 v2, 0x0

    :try_start_1
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PanoramaMetadataSupport;->mGetPanoMetadataTask:Lcom/lenovo/scg/gallery3d/util/Future;

    .line 74
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PanoramaMetadataSupport;->mCallbacksWaiting:Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getPanoramaSupport(Lcom/lenovo/scg/gallery3d/app/GalleryApp;Lcom/lenovo/scg/gallery3d/data/MediaObject$PanoramaSupportCallback;)V
    .locals 5
    .param p1, "app"    # Lcom/lenovo/scg/gallery3d/app/GalleryApp;
    .param p2, "callback"    # Lcom/lenovo/scg/gallery3d/data/MediaObject$PanoramaSupportCallback;

    .prologue
    .line 50
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PanoramaMetadataSupport;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PanoramaMetadataSupport;->mPanoramaMetadata:Lcom/lenovo/scg/gallery3d/util/LightCycleHelper$PanoramaMetadata;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PanoramaMetadataSupport;->mMediaObject:Lcom/lenovo/scg/gallery3d/data/MediaObject;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PanoramaMetadataSupport;->mPanoramaMetadata:Lcom/lenovo/scg/gallery3d/util/LightCycleHelper$PanoramaMetadata;

    iget-boolean v2, v2, Lcom/lenovo/scg/gallery3d/util/LightCycleHelper$PanoramaMetadata;->mUsePanoramaViewer:Z

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PanoramaMetadataSupport;->mPanoramaMetadata:Lcom/lenovo/scg/gallery3d/util/LightCycleHelper$PanoramaMetadata;

    iget-boolean v3, v3, Lcom/lenovo/scg/gallery3d/util/LightCycleHelper$PanoramaMetadata;->mIsPanorama360:Z

    invoke-interface {p2, v0, v2, v3}, Lcom/lenovo/scg/gallery3d/data/MediaObject$PanoramaSupportCallback;->panoramaInfoAvailable(Lcom/lenovo/scg/gallery3d/data/MediaObject;ZZ)V

    .line 61
    :goto_0
    monitor-exit v1

    .line 62
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PanoramaMetadataSupport;->mCallbacksWaiting:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PanoramaMetadataSupport;->mCallbacksWaiting:Ljava/util/ArrayList;

    .line 56
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getThreadPool()Lcom/lenovo/scg/gallery3d/util/ThreadPool;

    move-result-object v0

    new-instance v2, Lcom/lenovo/scg/gallery3d/data/PanoramaMetadataJob;

    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/PanoramaMetadataSupport;->mMediaObject:Lcom/lenovo/scg/gallery3d/data/MediaObject;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/lenovo/scg/gallery3d/data/PanoramaMetadataJob;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-virtual {v0, v2, p0}, Lcom/lenovo/scg/gallery3d/util/ThreadPool;->submit(Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;Lcom/lenovo/scg/gallery3d/util/FutureListener;)Lcom/lenovo/scg/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PanoramaMetadataSupport;->mGetPanoMetadataTask:Lcom/lenovo/scg/gallery3d/util/Future;

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PanoramaMetadataSupport;->mCallbacksWaiting:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onFutureDone(Lcom/lenovo/scg/gallery3d/util/Future;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/scg/gallery3d/util/Future",
            "<",
            "Lcom/lenovo/scg/gallery3d/util/LightCycleHelper$PanoramaMetadata;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "future":Lcom/lenovo/scg/gallery3d/util/Future;, "Lcom/lenovo/scg/gallery3d/util/Future<Lcom/lenovo/scg/gallery3d/util/LightCycleHelper$PanoramaMetadata;>;"
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PanoramaMetadataSupport;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 82
    :try_start_0
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/util/LightCycleHelper$PanoramaMetadata;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PanoramaMetadataSupport;->mPanoramaMetadata:Lcom/lenovo/scg/gallery3d/util/LightCycleHelper$PanoramaMetadata;

    .line 83
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PanoramaMetadataSupport;->mPanoramaMetadata:Lcom/lenovo/scg/gallery3d/util/LightCycleHelper$PanoramaMetadata;

    if-nez v2, :cond_0

    .line 85
    sget-object v2, Lcom/lenovo/scg/gallery3d/util/LightCycleHelper;->NOT_PANORAMA:Lcom/lenovo/scg/gallery3d/util/LightCycleHelper$PanoramaMetadata;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PanoramaMetadataSupport;->mPanoramaMetadata:Lcom/lenovo/scg/gallery3d/util/LightCycleHelper$PanoramaMetadata;

    .line 87
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PanoramaMetadataSupport;->mCallbacksWaiting:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/data/MediaObject$PanoramaSupportCallback;

    .line 88
    .local v0, "cb":Lcom/lenovo/scg/gallery3d/data/MediaObject$PanoramaSupportCallback;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PanoramaMetadataSupport;->mMediaObject:Lcom/lenovo/scg/gallery3d/data/MediaObject;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/PanoramaMetadataSupport;->mPanoramaMetadata:Lcom/lenovo/scg/gallery3d/util/LightCycleHelper$PanoramaMetadata;

    iget-boolean v4, v4, Lcom/lenovo/scg/gallery3d/util/LightCycleHelper$PanoramaMetadata;->mUsePanoramaViewer:Z

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/PanoramaMetadataSupport;->mPanoramaMetadata:Lcom/lenovo/scg/gallery3d/util/LightCycleHelper$PanoramaMetadata;

    iget-boolean v5, v5, Lcom/lenovo/scg/gallery3d/util/LightCycleHelper$PanoramaMetadata;->mIsPanorama360:Z

    invoke-interface {v0, v2, v4, v5}, Lcom/lenovo/scg/gallery3d/data/MediaObject$PanoramaSupportCallback;->panoramaInfoAvailable(Lcom/lenovo/scg/gallery3d/data/MediaObject;ZZ)V

    goto :goto_0

    .line 92
    .end local v0    # "cb":Lcom/lenovo/scg/gallery3d/data/MediaObject$PanoramaSupportCallback;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 90
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PanoramaMetadataSupport;->mGetPanoMetadataTask:Lcom/lenovo/scg/gallery3d/util/Future;

    .line 91
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PanoramaMetadataSupport;->mCallbacksWaiting:Ljava/util/ArrayList;

    .line 92
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    return-void
.end method
