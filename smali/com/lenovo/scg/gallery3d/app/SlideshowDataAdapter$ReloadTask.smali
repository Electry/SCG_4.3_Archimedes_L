.class Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$ReloadTask;
.super Ljava/lang/Object;
.source "SlideshowDataAdapter.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReloadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;
    .param p2, "x1"    # Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$1;

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$ReloadTask;-><init>(Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;

    .prologue
    .line 120
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$ReloadTask;->run(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 8
    .param p1, "jc"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 125
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string/jumbo v3, "pool_slideshowdataadapter_reloadtask"

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 128
    :goto_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;

    monitor-enter v3

    .line 129
    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mIsActive:Z
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->access$100(Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mDataReady:Z
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->access$200(Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mImageQueue:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->access$300(Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    const/4 v4, 0x3

    if-lt v2, v4, :cond_1

    .line 131
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 132
    :catch_0
    move-exception v2

    goto :goto_1

    .line 137
    :cond_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 138
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mIsActive:Z
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->access$100(Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    return-object v2

    .line 137
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 139
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;

    # setter for: Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mNeedReset:Z
    invoke-static {v2, v6}, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->access$402(Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;Z)Z

    .line 141
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;

    # invokes: Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->loadItem()Lcom/lenovo/scg/gallery3d/data/MediaItem;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->access$500(Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v1

    .line 143
    .local v1, "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mNeedReset:Z
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->access$400(Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 144
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;

    monitor-enter v3

    .line 145
    :try_start_4
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mImageQueue:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->access$300(Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 146
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mNextOutput:I
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->access$700(Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;)I

    move-result v4

    # setter for: Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mLoadIndex:I
    invoke-static {v2, v4}, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->access$602(Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;I)I

    .line 147
    monitor-exit v3

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 151
    :cond_3
    if-nez v1, :cond_5

    .line 152
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;

    monitor-enter v3

    .line 153
    :try_start_5
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mNeedReload:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->access$800(Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;

    const/4 v4, 0x0

    # setter for: Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mDataReady:Z
    invoke-static {v2, v4}, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->access$202(Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;Z)Z

    .line 154
    :cond_4
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 155
    monitor-exit v3

    goto/16 :goto_0

    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v2

    .line 159
    :cond_5
    invoke-virtual {v1, v7}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->requestImage(I)Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;->run(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 161
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_7

    .line 162
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;

    monitor-enter v3

    .line 163
    :try_start_6
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mImageQueue:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->access$300(Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;)Ljava/util/LinkedList;

    move-result-object v2

    new-instance v4, Lcom/lenovo/scg/gallery3d/app/SlideshowPage$Slide;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mLoadIndex:I
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->access$600(Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;)I

    move-result v5

    invoke-direct {v4, v1, v5, v0}, Lcom/lenovo/scg/gallery3d/app/SlideshowPage$Slide;-><init>(Lcom/lenovo/scg/gallery3d/data/MediaItem;ILandroid/graphics/Bitmap;)V

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 164
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mImageQueue:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->access$300(Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ne v2, v7, :cond_6

    .line 165
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 167
    :cond_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 169
    :cond_7
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;

    # ++operator for: Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mLoadIndex:I
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->access$604(Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;)I

    goto/16 :goto_0

    .line 167
    :catchall_3
    move-exception v2

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v2
.end method
