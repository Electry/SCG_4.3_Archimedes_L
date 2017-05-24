.class public Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;
.super Ljava/lang/Object;
.source "LoaderEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine$UploadUtil;,
        Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine$DownloadUtil;
    }
.end annotation


# instance fields
.field private download_album_list:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private download_album_thread_pool:Ljava/util/concurrent/ExecutorService;

.field private download_bundle:Landroid/os/Bundle;

.field private download_current:I

.field private download_list:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private download_max_progress:J

.field private download_max_size:J

.field private download_paused:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private download_pre_progress:J

.field private download_pre_size:J

.field private download_progress:J

.field private download_size:J

.field private download_thread_pool:Ljava/util/concurrent/ExecutorService;

.field private interrupted:Ljava/lang/Boolean;

.field private onDownloadListener:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader$OnDownloadListener;

.field private onUploadListener:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader$OnUploadListener;

.field private sync_auto_thread:Ljava/lang/Thread;

.field private sync_bundle:Landroid/os/Bundle;

.field private sync_list:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sync_thread_pool:Ljava/util/concurrent/ExecutorService;

.field private upload_bundle:Landroid/os/Bundle;

.field private upload_current:I

.field private upload_list:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private upload_max_progress:J

.field private upload_max_size:J

.field private upload_paused:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private upload_pre_progress:J

.field private upload_pre_size:J

.field private upload_progress:J

.field private upload_size:J

.field private upload_thread_pool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_thread_pool:Ljava/util/concurrent/ExecutorService;

    .line 30
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_list:Ljava/util/Vector;

    .line 31
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->onDownloadListener:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader$OnDownloadListener;

    .line 33
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_bundle:Landroid/os/Bundle;

    .line 42
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_album_thread_pool:Ljava/util/concurrent/ExecutorService;

    .line 43
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_album_list:Ljava/util/Vector;

    .line 247
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_thread_pool:Ljava/util/concurrent/ExecutorService;

    .line 248
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_list:Ljava/util/Vector;

    .line 249
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 250
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->onUploadListener:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader$OnUploadListener;

    .line 251
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_bundle:Landroid/os/Bundle;

    .line 424
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->sync_auto_thread:Ljava/lang/Thread;

    .line 425
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->sync_bundle:Landroid/os/Bundle;

    .line 463
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->sync_thread_pool:Ljava/util/concurrent/ExecutorService;

    .line 464
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->sync_list:Ljava/util/Vector;

    .line 24
    return-void
.end method

.method private download_album_has(Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 54
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_album_list:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 55
    .local v1, "taskKey":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    const/4 v2, 0x1

    .line 59
    .end local v1    # "taskKey":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private download_has(Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 89
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_list:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 90
    .local v1, "taskKey":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    const/4 v2, 0x1

    .line 94
    .end local v1    # "taskKey":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private initDownloadAlbumExecutorsIfNeed()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_album_thread_pool:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 64
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_album_thread_pool:Ljava/util/concurrent/ExecutorService;

    .line 65
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_album_list:Ljava/util/Vector;

    .line 66
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_bundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_bundle:Landroid/os/Bundle;

    .line 70
    :cond_0
    return-void
.end method

.method private initDownloadExecutorsIfNeed()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 98
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_thread_pool:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 99
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_thread_pool:Ljava/util/concurrent/ExecutorService;

    .line 100
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_list:Ljava/util/Vector;

    .line 101
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 102
    iput v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_current:I

    .line 103
    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_pre_size:J

    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_size:J

    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_max_size:J

    .line 104
    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_pre_progress:J

    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_progress:J

    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_max_progress:J

    .line 105
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_bundle:Landroid/os/Bundle;

    .line 107
    :cond_0
    return-void
.end method

.method private initUploadExecutorsIfNeed()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 271
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_thread_pool:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 272
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_thread_pool:Ljava/util/concurrent/ExecutorService;

    .line 273
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_list:Ljava/util/Vector;

    .line 274
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 275
    iput v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_current:I

    .line 276
    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_progress:J

    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_pre_progress:J

    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_max_progress:J

    .line 277
    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_size:J

    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_pre_size:J

    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_max_size:J

    .line 278
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_bundle:Landroid/os/Bundle;

    .line 280
    :cond_0
    return-void
.end method

.method private isDownloadAlbumInit()Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_album_thread_pool:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_album_list:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_bundle:Landroid/os/Bundle;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDownloadInit()Z
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_thread_pool:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_list:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_bundle:Landroid/os/Bundle;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUploadInit()Z
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_thread_pool:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_list:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_bundle:Landroid/os/Bundle;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sync_has(Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 502
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->sync_list:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 503
    .local v1, "tasKey":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 504
    const/4 v2, 0x1

    .line 507
    .end local v1    # "tasKey":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private upload_has(Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 290
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_list:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 291
    .local v1, "taskKey":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 292
    const/4 v2, 0x1

    .line 295
    .end local v1    # "taskKey":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getDownloadPause()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public getUploadPause()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public isInterrupted()Z
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->interrupted:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isSync()Z
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->sync_thread_pool:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->sync_auto_thread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDownloadAlbumList(Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderAlbumTask;Ljava/util/List;)V
    .locals 3
    .param p1, "task"    # Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderAlbumTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderAlbumTask;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 222
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;>;"
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->isDownloadAlbumInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    .end local p2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;>;"
    :goto_0
    return-void

    .line 223
    .restart local p2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;>;"
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_album_thread_pool:Ljava/util/concurrent/ExecutorService;

    monitor-enter v1

    .line 224
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_bundle:Landroid/os/Bundle;

    const-string v2, "Cloud download parcelable cloudphoto list key"

    check-cast p2, Ljava/util/ArrayList;

    .end local p2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;>;"
    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 225
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->onDownloadListener:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader$OnDownloadListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->onDownloadListener:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader$OnDownloadListener;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_bundle:Landroid/os/Bundle;

    invoke-interface {v0, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader$OnDownloadListener;->onAlbumToPhoto(Landroid/os/Bundle;)V

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_album_list:Ljava/util/Vector;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderAlbumTask;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_album_list:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_2

    .line 227
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_album_thread_pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_album_thread_pool:Ljava/util/concurrent/ExecutorService;

    .line 230
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDownloadCreate()V
    .locals 2

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->isDownloadInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->setDownloadPause()V

    .line 124
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 122
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->setDownloadResume()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public setDownloadFinished(Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderTask;)V
    .locals 6
    .param p1, "task"    # Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderTask;

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->isDownloadInit()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_thread_pool:Ljava/util/concurrent/ExecutorService;

    monitor-enter v2

    .line 186
    :try_start_0
    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_size:J

    iput-wide v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_pre_size:J

    .line 187
    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_progress:J

    iput-wide v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_pre_progress:J

    .line 188
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_bundle:Landroid/os/Bundle;

    const-string v3, "Cloud download int total key"

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_list:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 189
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_list:Ljava/util/Vector;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderTask;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_current:I

    .line 190
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_bundle:Landroid/os/Bundle;

    const-string v3, "Cloud download int current key"

    iget v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_current:I

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 191
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_bundle:Landroid/os/Bundle;

    const-string v3, "Cloud download long max size key"

    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_max_size:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 192
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_bundle:Landroid/os/Bundle;

    const-string v3, "Cloud download long size key"

    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_size:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 193
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_bundle:Landroid/os/Bundle;

    const-string v3, "Cloud download long max progress key"

    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_max_progress:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 194
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_bundle:Landroid/os/Bundle;

    const-string v3, "Cloud download long progress key"

    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_progress:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 195
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderTask;->getObj()Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    move-result-object v0

    .line 196
    .local v0, "cloudPhoto":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;
    if-eqz v0, :cond_1

    .line 197
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_bundle:Landroid/os/Bundle;

    const-string v3, "Cloud download parcelable cloudphoto key"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 198
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->onDownloadListener:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader$OnDownloadListener;

    if-eqz v1, :cond_2

    .line 199
    iget v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_current:I

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_list:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v1, v3, :cond_3

    .line 200
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->onDownloadListener:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader$OnDownloadListener;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_bundle:Landroid/os/Bundle;

    invoke-interface {v1, v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader$OnDownloadListener;->onFinished(Landroid/os/Bundle;)V

    .line 205
    :cond_2
    :goto_1
    monitor-exit v2

    goto :goto_0

    .end local v0    # "cloudPhoto":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 202
    .restart local v0    # "cloudPhoto":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->onDownloadListener:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader$OnDownloadListener;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_bundle:Landroid/os/Bundle;

    invoke-interface {v1, v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader$OnDownloadListener;->onUpdatePage(Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public setDownloadPause()V
    .locals 6

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->isDownloadInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_bundle:Landroid/os/Bundle;

    const-string v2, "Cloud download int total key"

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_list:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 133
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_bundle:Landroid/os/Bundle;

    const-string v2, "Cloud download int current key"

    iget v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_current:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 134
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_bundle:Landroid/os/Bundle;

    const-string v2, "Cloud download long max size key"

    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_max_size:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 135
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_bundle:Landroid/os/Bundle;

    const-string v2, "Cloud download long size key"

    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_size:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 136
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_bundle:Landroid/os/Bundle;

    const-string v2, "Cloud download long max progress key"

    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_max_progress:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 137
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_bundle:Landroid/os/Bundle;

    const-string v2, "Cloud download long progress key"

    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_progress:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 138
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->onDownloadListener:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader$OnDownloadListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->onDownloadListener:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader$OnDownloadListener;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_bundle:Landroid/os/Bundle;

    invoke-interface {v0, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader$OnDownloadListener;->onPause(Landroid/os/Bundle;)V

    .line 139
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDownloadProgress(JJ)V
    .locals 7
    .param p1, "size"    # J
    .param p3, "progress"    # J

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->isDownloadInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_thread_pool:Ljava/util/concurrent/ExecutorService;

    monitor-enter v1

    .line 211
    :try_start_0
    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_pre_size:J

    add-long/2addr v2, p1

    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_size:J

    .line 212
    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_pre_progress:J

    add-long/2addr v2, p3

    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_progress:J

    .line 213
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_bundle:Landroid/os/Bundle;

    const-string v2, "Cloud download long max size key"

    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_max_size:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 214
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_bundle:Landroid/os/Bundle;

    const-string v2, "Cloud download long size key"

    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_size:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 215
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_bundle:Landroid/os/Bundle;

    const-string v2, "Cloud download long max progress key"

    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_max_progress:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 216
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_bundle:Landroid/os/Bundle;

    const-string v2, "Cloud download long progress key"

    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_progress:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 217
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->onDownloadListener:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader$OnDownloadListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->onDownloadListener:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader$OnDownloadListener;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_bundle:Landroid/os/Bundle;

    invoke-interface {v0, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader$OnDownloadListener;->onProgress(Landroid/os/Bundle;)V

    .line 218
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDownloadResume()V
    .locals 6

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->isDownloadInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 147
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_bundle:Landroid/os/Bundle;

    const-string v2, "Cloud download int total key"

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_list:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 150
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_bundle:Landroid/os/Bundle;

    const-string v2, "Cloud download int current key"

    iget v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_current:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 151
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_bundle:Landroid/os/Bundle;

    const-string v2, "Cloud download long max size key"

    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_max_size:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 152
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_bundle:Landroid/os/Bundle;

    const-string v2, "Cloud download long size key"

    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_size:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 153
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_bundle:Landroid/os/Bundle;

    const-string v2, "Cloud download long max progress key"

    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_max_progress:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 154
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_bundle:Landroid/os/Bundle;

    const-string v2, "Cloud download long progress key"

    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_progress:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 155
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->onDownloadListener:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader$OnDownloadListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->onDownloadListener:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader$OnDownloadListener;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_bundle:Landroid/os/Bundle;

    invoke-interface {v0, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader$OnDownloadListener;->onResume(Landroid/os/Bundle;)V

    .line 156
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDownloadStop()V
    .locals 4

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->isDownloadInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_thread_pool:Ljava/util/concurrent/ExecutorService;

    monitor-enter v1

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_thread_pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 163
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_list:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 164
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->onDownloadListener:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader$OnDownloadListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->onDownloadListener:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader$OnDownloadListener;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_bundle:Landroid/os/Bundle;

    invoke-interface {v0, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader$OnDownloadListener;->onStop(Landroid/os/Bundle;)V

    .line 165
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_thread_pool:Ljava/util/concurrent/ExecutorService;

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_list:Ljava/util/Vector;

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 168
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_current:I

    .line 169
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_pre_size:J

    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_size:J

    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_max_size:J

    .line 170
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_pre_progress:J

    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_progress:J

    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_max_progress:J

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_bundle:Landroid/os/Bundle;

    .line 172
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOnDownloadListener(Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader$OnDownloadListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader$OnDownloadListener;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->onDownloadListener:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader$OnDownloadListener;

    .line 181
    return-void
.end method

.method public setOnUploadListener(Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader$OnUploadListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader$OnUploadListener;

    .prologue
    .line 410
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->onUploadListener:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader$OnUploadListener;

    .line 411
    return-void
.end method

.method public setSyncAuto(Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncAutoTask;)V
    .locals 1
    .param p1, "task"    # Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncAutoTask;

    .prologue
    .line 429
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->sync_auto_thread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 430
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->sync_auto_thread:Ljava/lang/Thread;

    .line 431
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->sync_auto_thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 432
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->interrupted:Ljava/lang/Boolean;

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->sync_bundle:Landroid/os/Bundle;

    if-nez v0, :cond_1

    .line 435
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->sync_bundle:Landroid/os/Bundle;

    .line 437
    :cond_1
    return-void
.end method

.method public setSyncAutoStop()V
    .locals 2

    .prologue
    .line 454
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->sync_auto_thread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 455
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->sync_auto_thread:Ljava/lang/Thread;

    monitor-enter v1

    .line 456
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->sync_auto_thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 457
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->interrupted:Ljava/lang/Boolean;

    .line 458
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->sync_auto_thread:Ljava/lang/Thread;

    .line 459
    monitor-exit v1

    .line 461
    :cond_0
    return-void

    .line 459
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSyncFinished(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;)V
    .locals 4
    .param p1, "cloudPhoto"    # Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    .prologue
    .line 444
    const-string v0, "WYJ"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sync File--> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->getmPhotoName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->sync_bundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 446
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->sync_bundle:Landroid/os/Bundle;

    monitor-enter v1

    .line 447
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->sync_bundle:Landroid/os/Bundle;

    const-string v2, "Cloud upload parcelable cloudphoto key"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 448
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "Cloud update upload action"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->sync_bundle:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->sendBroadcast(Landroid/content/Intent;)V

    .line 449
    monitor-exit v1

    .line 451
    :cond_0
    return-void

    .line 449
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSyncFinished(Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncTask;)V
    .locals 3
    .param p1, "task"    # Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncTask;

    .prologue
    .line 480
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->sync_thread_pool:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->sync_list:Ljava/util/Vector;

    if-eqz v0, :cond_1

    .line 481
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->sync_thread_pool:Ljava/util/concurrent/ExecutorService;

    monitor-enter v1

    .line 482
    :try_start_0
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncTask;->getCloudPhoto()Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->setSyncFinished(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;)V

    .line 483
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->sync_list:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncTask;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->setSyncStop()V

    .line 486
    :cond_0
    monitor-exit v1

    .line 488
    :cond_1
    return-void

    .line 486
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSyncStop()V
    .locals 2

    .prologue
    .line 491
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->sync_thread_pool:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 492
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->sync_thread_pool:Ljava/util/concurrent/ExecutorService;

    monitor-enter v1

    .line 493
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->sync_thread_pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 494
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->sync_thread_pool:Ljava/util/concurrent/ExecutorService;

    .line 495
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->sync_list:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 496
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->sync_list:Ljava/util/Vector;

    .line 497
    monitor-exit v1

    .line 499
    :cond_0
    return-void

    .line 497
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setUpdateUploadMaxSize(J)V
    .locals 3
    .param p1, "size"    # J

    .prologue
    .line 363
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_max_size:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_max_size:J

    .line 364
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->setUploadCreate()V

    .line 365
    return-void
.end method

.method public setUploadCreate()V
    .locals 2

    .prologue
    .line 299
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->isUploadInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    :goto_0
    return-void

    .line 300
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 301
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 302
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->setUploadPause()V

    .line 306
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 304
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->setUploadResume()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public setUploadFinished(Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;)V
    .locals 6
    .param p1, "task"    # Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;

    .prologue
    .line 368
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->isUploadInit()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 390
    :goto_0
    return-void

    .line 369
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_thread_pool:Ljava/util/concurrent/ExecutorService;

    monitor-enter v2

    .line 370
    :try_start_0
    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_size:J

    iput-wide v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_pre_size:J

    .line 371
    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_progress:J

    iput-wide v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_pre_progress:J

    .line 372
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_bundle:Landroid/os/Bundle;

    const-string v3, "Cloud upload int total key"

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_list:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 373
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_list:Ljava/util/Vector;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_current:I

    .line 374
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_bundle:Landroid/os/Bundle;

    const-string v3, "Cloud upload int current key"

    iget v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_current:I

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 375
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_bundle:Landroid/os/Bundle;

    const-string v3, "Cloud upload long max size key"

    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_max_size:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 376
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_bundle:Landroid/os/Bundle;

    const-string v3, "Cloud upload long size key"

    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_size:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 377
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_bundle:Landroid/os/Bundle;

    const-string v3, "Cloud upload long max progress key"

    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_max_progress:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 378
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_bundle:Landroid/os/Bundle;

    const-string v3, "Cloud upload long progress key"

    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_progress:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 379
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;->getCloudPhoto()Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    move-result-object v0

    .line 380
    .local v0, "cloudPhoto":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;
    if-eqz v0, :cond_1

    .line 381
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_bundle:Landroid/os/Bundle;

    const-string v3, "Cloud upload parcelable cloudphoto key"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 382
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->onUploadListener:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader$OnUploadListener;

    if-eqz v1, :cond_2

    .line 383
    iget v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_current:I

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_list:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v1, v3, :cond_3

    .line 384
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->onUploadListener:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader$OnUploadListener;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_bundle:Landroid/os/Bundle;

    invoke-interface {v1, v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader$OnUploadListener;->onFinished(Landroid/os/Bundle;)V

    .line 389
    :cond_2
    :goto_1
    monitor-exit v2

    goto :goto_0

    .end local v0    # "cloudPhoto":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 386
    .restart local v0    # "cloudPhoto":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->onUploadListener:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader$OnUploadListener;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_bundle:Landroid/os/Bundle;

    invoke-interface {v1, v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader$OnUploadListener;->onUpdatePage(Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public setUploadPause()V
    .locals 1

    .prologue
    .line 310
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->setUploadPause(I)V

    .line 311
    return-void
.end method

.method public setUploadPause(I)V
    .locals 6
    .param p1, "type"    # I

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->isUploadInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    :goto_0
    return-void

    .line 315
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 316
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_bundle:Landroid/os/Bundle;

    const-string v2, "Cloud upload error type key"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 319
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_bundle:Landroid/os/Bundle;

    const-string v2, "Cloud upload int total key"

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_list:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 320
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_bundle:Landroid/os/Bundle;

    const-string v2, "Cloud upload int current key"

    iget v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_current:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 321
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_bundle:Landroid/os/Bundle;

    const-string v2, "Cloud upload long max size key"

    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_max_size:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 322
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_bundle:Landroid/os/Bundle;

    const-string v2, "Cloud upload long size key"

    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_size:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 323
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_bundle:Landroid/os/Bundle;

    const-string v2, "Cloud upload long max progress key"

    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_max_progress:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 324
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_bundle:Landroid/os/Bundle;

    const-string v2, "Cloud upload long progress key"

    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_progress:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 325
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->onUploadListener:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader$OnUploadListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->onUploadListener:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader$OnUploadListener;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_bundle:Landroid/os/Bundle;

    invoke-interface {v0, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader$OnUploadListener;->onPause(Landroid/os/Bundle;)V

    .line 326
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setUploadProgress(Ljava/lang/Long;J)V
    .locals 6
    .param p1, "size"    # Ljava/lang/Long;
    .param p2, "progress"    # J

    .prologue
    .line 393
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->isUploadInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    :goto_0
    return-void

    .line 394
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_thread_pool:Ljava/util/concurrent/ExecutorService;

    monitor-enter v1

    .line 395
    :try_start_0
    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_pre_size:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_size:J

    .line 396
    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_pre_progress:J

    add-long/2addr v2, p2

    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_progress:J

    .line 397
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_bundle:Landroid/os/Bundle;

    const-string v2, "Cloud upload long max size key"

    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_max_size:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 398
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_bundle:Landroid/os/Bundle;

    const-string v2, "Cloud upload long size key"

    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_size:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 399
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_bundle:Landroid/os/Bundle;

    const-string v2, "Cloud upload long max progress key"

    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_max_progress:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 400
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_bundle:Landroid/os/Bundle;

    const-string v2, "Cloud upload long progress key"

    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_progress:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 401
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->onUploadListener:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader$OnUploadListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->onUploadListener:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader$OnUploadListener;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_bundle:Landroid/os/Bundle;

    invoke-interface {v0, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader$OnUploadListener;->onProgress(Landroid/os/Bundle;)V

    .line 402
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setUploadResume()V
    .locals 6

    .prologue
    .line 330
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->isUploadInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    :goto_0
    return-void

    .line 331
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 332
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 334
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_bundle:Landroid/os/Bundle;

    const-string v2, "Cloud upload int total key"

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_list:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 337
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_bundle:Landroid/os/Bundle;

    const-string v2, "Cloud upload int current key"

    iget v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_current:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 338
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_bundle:Landroid/os/Bundle;

    const-string v2, "Cloud upload long max size key"

    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_max_size:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 339
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_bundle:Landroid/os/Bundle;

    const-string v2, "Cloud upload long size key"

    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_size:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 340
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_bundle:Landroid/os/Bundle;

    const-string v2, "Cloud upload long max progress key"

    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_max_progress:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 341
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_bundle:Landroid/os/Bundle;

    const-string v2, "Cloud upload long progress key"

    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_progress:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 342
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->onUploadListener:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader$OnUploadListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->onUploadListener:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader$OnUploadListener;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_bundle:Landroid/os/Bundle;

    invoke-interface {v0, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader$OnUploadListener;->onResume(Landroid/os/Bundle;)V

    .line 343
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setUploadStop()V
    .locals 4

    .prologue
    .line 347
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->isUploadInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    :goto_0
    return-void

    .line 348
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_thread_pool:Ljava/util/concurrent/ExecutorService;

    monitor-enter v1

    .line 349
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_thread_pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 350
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_list:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 351
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->onUploadListener:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader$OnUploadListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->onUploadListener:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader$OnUploadListener;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_bundle:Landroid/os/Bundle;

    invoke-interface {v0, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader$OnUploadListener;->onStop(Landroid/os/Bundle;)V

    .line 352
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_thread_pool:Ljava/util/concurrent/ExecutorService;

    .line 353
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_bundle:Landroid/os/Bundle;

    .line 354
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_list:Ljava/util/Vector;

    .line 355
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 356
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_current:I

    .line 357
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_progress:J

    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_pre_progress:J

    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_max_progress:J

    .line 358
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_size:J

    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_pre_size:J

    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_max_size:J

    .line 359
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public submit(Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderAlbumTask;)V
    .locals 2
    .param p1, "task"    # Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderAlbumTask;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->initDownloadAlbumExecutorsIfNeed()V

    .line 47
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderAlbumTask;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_album_has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_album_thread_pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 49
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_album_list:Ljava/util/Vector;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderAlbumTask;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_0
    return-void
.end method

.method public submit(Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderTask;)V
    .locals 4
    .param p1, "task"    # Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderTask;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->initDownloadExecutorsIfNeed()V

    .line 80
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderTask;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_thread_pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 82
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_list:Ljava/util/Vector;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderTask;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 83
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_max_size:J

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderTask;->getObj()Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->getSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_max_size:J

    .line 84
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_max_progress:J

    const-wide/16 v2, 0x64

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->download_max_progress:J

    .line 86
    :cond_0
    return-void
.end method

.method public submit(Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;)V
    .locals 4
    .param p1, "task"    # Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;

    .prologue
    .line 261
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->initUploadExecutorsIfNeed()V

    .line 262
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_thread_pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 264
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_list:Ljava/util/Vector;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 265
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_max_size:J

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;->getSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_max_size:J

    .line 266
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_max_progress:J

    const-wide/16 v2, 0x64

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->upload_max_progress:J

    .line 268
    :cond_0
    return-void
.end method

.method public sync(Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncTask;)V
    .locals 2
    .param p1, "task"    # Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncTask;

    .prologue
    .line 466
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->sync_thread_pool:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 467
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->sync_thread_pool:Ljava/util/concurrent/ExecutorService;

    .line 468
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->sync_list:Ljava/util/Vector;

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->sync_bundle:Landroid/os/Bundle;

    if-nez v0, :cond_1

    .line 471
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->sync_bundle:Landroid/os/Bundle;

    .line 473
    :cond_1
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncTask;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->sync_has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 474
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->sync_thread_pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 475
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->sync_list:Ljava/util/Vector;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncTask;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 477
    :cond_2
    return-void
.end method
