.class Lcom/lenovo/scg/gallery3d/data/DownloadCache$DownloadTask;
.super Ljava/lang/Object;
.source "DownloadCache.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;
.implements Lcom/lenovo/scg/gallery3d/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/data/DownloadCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job",
        "<",
        "Ljava/io/File;",
        ">;",
        "Lcom/lenovo/scg/gallery3d/util/FutureListener",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private mFuture:Lcom/lenovo/scg/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/scg/gallery3d/util/Future",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mProxySet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/lenovo/scg/gallery3d/data/DownloadCache$TaskProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final mUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/data/DownloadCache;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/data/DownloadCache;Ljava/lang/String;)V
    .locals 1
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache$DownloadTask;->this$0:Lcom/lenovo/scg/gallery3d/data/DownloadCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache$DownloadTask;->mProxySet:Ljava/util/HashSet;

    .line 284
    invoke-static {p2}, Lcom/lenovo/scg/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache$DownloadTask;->mUrl:Ljava/lang/String;

    .line 285
    return-void
.end method

.method static synthetic access$002(Lcom/lenovo/scg/gallery3d/data/DownloadCache$DownloadTask;Lcom/lenovo/scg/gallery3d/util/Future;)Lcom/lenovo/scg/gallery3d/util/Future;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/data/DownloadCache$DownloadTask;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/util/Future;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache$DownloadTask;->mFuture:Lcom/lenovo/scg/gallery3d/util/Future;

    return-object p1
.end method


# virtual methods
.method public addProxy(Lcom/lenovo/scg/gallery3d/data/DownloadCache$TaskProxy;)V
    .locals 1
    .param p1, "proxy"    # Lcom/lenovo/scg/gallery3d/data/DownloadCache$TaskProxy;

    .prologue
    .line 299
    # setter for: Lcom/lenovo/scg/gallery3d/data/DownloadCache$TaskProxy;->mTask:Lcom/lenovo/scg/gallery3d/data/DownloadCache$DownloadTask;
    invoke-static {p1, p0}, Lcom/lenovo/scg/gallery3d/data/DownloadCache$TaskProxy;->access$302(Lcom/lenovo/scg/gallery3d/data/DownloadCache$TaskProxy;Lcom/lenovo/scg/gallery3d/data/DownloadCache$DownloadTask;)Lcom/lenovo/scg/gallery3d/data/DownloadCache$DownloadTask;

    .line 300
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache$DownloadTask;->mProxySet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 301
    return-void
.end method

.method public onFutureDone(Lcom/lenovo/scg/gallery3d/util/Future;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/scg/gallery3d/util/Future",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 305
    .local p1, "future":Lcom/lenovo/scg/gallery3d/util/Future;, "Lcom/lenovo/scg/gallery3d/util/Future<Ljava/io/File;>;"
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 306
    .local v2, "file":Ljava/io/File;
    const-wide/16 v4, 0x0

    .line 307
    .local v4, "id":J
    if-eqz v2, :cond_0

    .line 308
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache$DownloadTask;->this$0:Lcom/lenovo/scg/gallery3d/data/DownloadCache;

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache$DownloadTask;->mUrl:Ljava/lang/String;

    # invokes: Lcom/lenovo/scg/gallery3d/data/DownloadCache;->insertEntry(Ljava/lang/String;Ljava/io/File;)J
    invoke-static {v7, v8, v2}, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->access$400(Lcom/lenovo/scg/gallery3d/data/DownloadCache;Ljava/lang/String;Ljava/io/File;)J

    move-result-wide v4

    .line 311
    :cond_0
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/util/Future;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 312
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache$DownloadTask;->mProxySet:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->isEmpty()Z

    move-result v7

    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/common/Utils;->assertTrue(Z)V

    .line 330
    :goto_0
    return-void

    .line 316
    :cond_1
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache$DownloadTask;->this$0:Lcom/lenovo/scg/gallery3d/data/DownloadCache;

    # getter for: Lcom/lenovo/scg/gallery3d/data/DownloadCache;->mTaskMap:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->access$200(Lcom/lenovo/scg/gallery3d/data/DownloadCache;)Ljava/util/HashMap;

    move-result-object v8

    monitor-enter v8

    .line 317
    const/4 v0, 0x0

    .line 318
    .local v0, "entry":Lcom/lenovo/scg/gallery3d/data/DownloadCache$Entry;
    :try_start_0
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache$DownloadTask;->this$0:Lcom/lenovo/scg/gallery3d/data/DownloadCache;

    # getter for: Lcom/lenovo/scg/gallery3d/data/DownloadCache;->mEntryMap:Lcom/lenovo/scg/gallery3d/common/LruCache;
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->access$500(Lcom/lenovo/scg/gallery3d/data/DownloadCache;)Lcom/lenovo/scg/gallery3d/common/LruCache;

    move-result-object v9

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    if-eqz v2, :cond_2

    .line 320
    :try_start_1
    new-instance v1, Lcom/lenovo/scg/gallery3d/data/DownloadCache$Entry;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache$DownloadTask;->this$0:Lcom/lenovo/scg/gallery3d/data/DownloadCache;

    invoke-direct {v1, v7, v4, v5, v2}, Lcom/lenovo/scg/gallery3d/data/DownloadCache$Entry;-><init>(Lcom/lenovo/scg/gallery3d/data/DownloadCache;JLjava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 321
    .end local v0    # "entry":Lcom/lenovo/scg/gallery3d/data/DownloadCache$Entry;
    .local v1, "entry":Lcom/lenovo/scg/gallery3d/data/DownloadCache$Entry;
    :try_start_2
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache$DownloadTask;->this$0:Lcom/lenovo/scg/gallery3d/data/DownloadCache;

    # getter for: Lcom/lenovo/scg/gallery3d/data/DownloadCache;->mEntryMap:Lcom/lenovo/scg/gallery3d/common/LruCache;
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->access$500(Lcom/lenovo/scg/gallery3d/data/DownloadCache;)Lcom/lenovo/scg/gallery3d/common/LruCache;

    move-result-object v7

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache$DownloadTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v7, v10, v1}, Lcom/lenovo/scg/gallery3d/common/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_3

    const/4 v7, 0x1

    :goto_1
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/common/Utils;->assertTrue(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v0, v1

    .line 323
    .end local v1    # "entry":Lcom/lenovo/scg/gallery3d/data/DownloadCache$Entry;
    .restart local v0    # "entry":Lcom/lenovo/scg/gallery3d/data/DownloadCache$Entry;
    :cond_2
    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 324
    :try_start_4
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache$DownloadTask;->mProxySet:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/scg/gallery3d/data/DownloadCache$TaskProxy;

    .line 325
    .local v6, "proxy":Lcom/lenovo/scg/gallery3d/data/DownloadCache$TaskProxy;
    invoke-virtual {v6, v0}, Lcom/lenovo/scg/gallery3d/data/DownloadCache$TaskProxy;->setResult(Lcom/lenovo/scg/gallery3d/data/DownloadCache$Entry;)V

    goto :goto_2

    .line 329
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "proxy":Lcom/lenovo/scg/gallery3d/data/DownloadCache$TaskProxy;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v7

    .line 321
    .end local v0    # "entry":Lcom/lenovo/scg/gallery3d/data/DownloadCache$Entry;
    .restart local v1    # "entry":Lcom/lenovo/scg/gallery3d/data/DownloadCache$Entry;
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 323
    .end local v1    # "entry":Lcom/lenovo/scg/gallery3d/data/DownloadCache$Entry;
    .restart local v0    # "entry":Lcom/lenovo/scg/gallery3d/data/DownloadCache$Entry;
    :catchall_1
    move-exception v7

    :goto_3
    :try_start_5
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v7

    .line 327
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_4
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache$DownloadTask;->this$0:Lcom/lenovo/scg/gallery3d/data/DownloadCache;

    # getter for: Lcom/lenovo/scg/gallery3d/data/DownloadCache;->mTaskMap:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->access$200(Lcom/lenovo/scg/gallery3d/data/DownloadCache;)Ljava/util/HashMap;

    move-result-object v7

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache$DownloadTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache$DownloadTask;->this$0:Lcom/lenovo/scg/gallery3d/data/DownloadCache;

    const/16 v9, 0x10

    # invokes: Lcom/lenovo/scg/gallery3d/data/DownloadCache;->freeSomeSpaceIfNeed(I)V
    invoke-static {v7, v9}, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->access$600(Lcom/lenovo/scg/gallery3d/data/DownloadCache;I)V

    .line 329
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 323
    .end local v0    # "entry":Lcom/lenovo/scg/gallery3d/data/DownloadCache$Entry;
    .end local v3    # "i$":Ljava/util/Iterator;
    .restart local v1    # "entry":Lcom/lenovo/scg/gallery3d/data/DownloadCache$Entry;
    :catchall_2
    move-exception v7

    move-object v0, v1

    .end local v1    # "entry":Lcom/lenovo/scg/gallery3d/data/DownloadCache$Entry;
    .restart local v0    # "entry":Lcom/lenovo/scg/gallery3d/data/DownloadCache$Entry;
    goto :goto_3
.end method

.method public removeProxy(Lcom/lenovo/scg/gallery3d/data/DownloadCache$TaskProxy;)V
    .locals 3
    .param p1, "proxy"    # Lcom/lenovo/scg/gallery3d/data/DownloadCache$TaskProxy;

    .prologue
    .line 288
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache$DownloadTask;->this$0:Lcom/lenovo/scg/gallery3d/data/DownloadCache;

    # getter for: Lcom/lenovo/scg/gallery3d/data/DownloadCache;->mTaskMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->access$200(Lcom/lenovo/scg/gallery3d/data/DownloadCache;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 289
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache$DownloadTask;->mProxySet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->assertTrue(Z)V

    .line 290
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache$DownloadTask;->mProxySet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache$DownloadTask;->mFuture:Lcom/lenovo/scg/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/util/Future;->cancel()V

    .line 292
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache$DownloadTask;->this$0:Lcom/lenovo/scg/gallery3d/data/DownloadCache;

    # getter for: Lcom/lenovo/scg/gallery3d/data/DownloadCache;->mTaskMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->access$200(Lcom/lenovo/scg/gallery3d/data/DownloadCache;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache$DownloadTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    :cond_0
    monitor-exit v1

    .line 295
    return-void

    .line 294
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Ljava/io/File;
    .locals 10
    .param p1, "jc"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;

    .prologue
    const/4 v6, 0x2

    const/4 v9, 0x0

    .line 336
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    const-string/jumbo v5, "pool_downloadcache_downloadtask"

    invoke-virtual {v4, v5}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 339
    invoke-interface {p1, v6}, Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;->setMode(I)Z

    .line 340
    const/4 v2, 0x0

    .line 342
    .local v2, "tempFile":Ljava/io/File;
    :try_start_0
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache$DownloadTask;->mUrl:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 343
    .local v3, "url":Ljava/net/URL;
    const-string v4, "cache"

    const-string v5, ".tmp"

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache$DownloadTask;->this$0:Lcom/lenovo/scg/gallery3d/data/DownloadCache;

    # getter for: Lcom/lenovo/scg/gallery3d/data/DownloadCache;->mRoot:Ljava/io/File;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->access$100(Lcom/lenovo/scg/gallery3d/data/DownloadCache;)Ljava/io/File;

    move-result-object v6

    invoke-static {v4, v5, v6}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 345
    const/4 v4, 0x2

    invoke-interface {p1, v4}, Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;->setMode(I)Z

    .line 346
    invoke-static {p1, v3, v2}, Lcom/lenovo/scg/common/utils/net/DownloadUtils;->requestDownload(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;Ljava/net/URL;Ljava/io/File;)Z

    move-result v0

    .line 347
    .local v0, "downloaded":Z
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;->setMode(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    if-eqz v0, :cond_0

    .line 352
    invoke-interface {p1, v9}, Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;->setMode(I)Z

    move-object v4, v2

    .line 355
    .end local v0    # "downloaded":Z
    .end local v3    # "url":Ljava/net/URL;
    :goto_0
    return-object v4

    .line 352
    .restart local v0    # "downloaded":Z
    .restart local v3    # "url":Ljava/net/URL;
    :cond_0
    invoke-interface {p1, v9}, Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;->setMode(I)Z

    .line 354
    .end local v0    # "downloaded":Z
    .end local v3    # "url":Ljava/net/URL;
    :goto_1
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 355
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 349
    :catch_0
    move-exception v1

    .line 350
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "DownloadCache"

    const-string v5, "fail to download %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache$DownloadTask;->mUrl:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 352
    invoke-interface {p1, v9}, Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;->setMode(I)Z

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-interface {p1, v9}, Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;->setMode(I)Z

    throw v4
.end method

.method public bridge synthetic run(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;

    .prologue
    .line 275
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/data/DownloadCache$DownloadTask;->run(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
