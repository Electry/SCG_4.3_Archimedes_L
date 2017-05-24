.class Lcom/lenovo/scg/photos/data/MediaCache$4;
.super Ljava/lang/Thread;
.source "MediaCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/photos/data/MediaCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/photos/data/MediaCache;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/photos/data/MediaCache;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/lenovo/scg/photos/data/MediaCache$4;->this$0:Lcom/lenovo/scg/photos/data/MediaCache;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 280
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/photos/data/MediaCache$4;->this$0:Lcom/lenovo/scg/photos/data/MediaCache;

    # getter for: Lcom/lenovo/scg/photos/data/MediaCache;->mRunning:Z
    invoke-static {v2}, Lcom/lenovo/scg/photos/data/MediaCache;->access$000(Lcom/lenovo/scg/photos/data/MediaCache;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 282
    iget-object v2, p0, Lcom/lenovo/scg/photos/data/MediaCache$4;->this$0:Lcom/lenovo/scg/photos/data/MediaCache;

    # getter for: Lcom/lenovo/scg/photos/data/MediaCache;->mCallbacks:Ljava/util/Queue;
    invoke-static {v2}, Lcom/lenovo/scg/photos/data/MediaCache;->access$700(Lcom/lenovo/scg/photos/data/MediaCache;)Ljava/util/Queue;

    move-result-object v3

    monitor-enter v3

    .line 283
    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/scg/photos/data/MediaCache$4;->this$0:Lcom/lenovo/scg/photos/data/MediaCache;

    # getter for: Lcom/lenovo/scg/photos/data/MediaCache;->mCallbacks:Ljava/util/Queue;
    invoke-static {v2}, Lcom/lenovo/scg/photos/data/MediaCache;->access$700(Lcom/lenovo/scg/photos/data/MediaCache;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    .line 285
    :try_start_1
    iget-object v2, p0, Lcom/lenovo/scg/photos/data/MediaCache$4;->this$0:Lcom/lenovo/scg/photos/data/MediaCache;

    # getter for: Lcom/lenovo/scg/photos/data/MediaCache;->mCallbacks:Ljava/util/Queue;
    invoke-static {v2}, Lcom/lenovo/scg/photos/data/MediaCache;->access$700(Lcom/lenovo/scg/photos/data/MediaCache;)Ljava/util/Queue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    iget-object v2, p0, Lcom/lenovo/scg/photos/data/MediaCache$4;->this$0:Lcom/lenovo/scg/photos/data/MediaCache;

    # getter for: Lcom/lenovo/scg/photos/data/MediaCache;->mRunning:Z
    invoke-static {v2}, Lcom/lenovo/scg/photos/data/MediaCache;->access$000(Lcom/lenovo/scg/photos/data/MediaCache;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 288
    monitor-exit v3

    .line 298
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    return-void

    .line 290
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    sget-object v2, Lcom/lenovo/scg/photos/data/MediaCache;->TAG:Ljava/lang/String;

    const-string v4, "Unexpected Interruption, continuing"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 294
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 293
    :cond_2
    :try_start_3
    iget-object v2, p0, Lcom/lenovo/scg/photos/data/MediaCache$4;->this$0:Lcom/lenovo/scg/photos/data/MediaCache;

    # getter for: Lcom/lenovo/scg/photos/data/MediaCache;->mCallbacks:Ljava/util/Queue;
    invoke-static {v2}, Lcom/lenovo/scg/photos/data/MediaCache;->access$700(Lcom/lenovo/scg/photos/data/MediaCache;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/photos/data/MediaCache$NotifyReady;

    .line 294
    .local v1, "notifyImage":Lcom/lenovo/scg/photos/data/MediaCache$NotifyReady;
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 296
    invoke-interface {v1}, Lcom/lenovo/scg/photos/data/MediaCache$NotifyReady;->notifyReady()V

    goto :goto_0
.end method
