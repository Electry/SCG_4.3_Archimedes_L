.class public Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool;
.super Ljava/lang/Object;
.source "TaskThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool$TaskProxy;,
        Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool$Type;
    }
.end annotation


# static fields
.field private static final KEEP_ALIVE_TIME:I = 0xa

.field private static final READ_CORE_POOL_SIZE:I = 0x2

.field private static final READ_MAX_POOL_SIZE:I = 0x2

.field private static final READ_QUEUE_SIZE:I = 0x12c

.field private static final READ_THREAD_NAME:Ljava/lang/String; = "FileManagerReadTaskThreadPool"

.field private static final TAG:Ljava/lang/String; = "wangwf1_TaskThreadPool"

.field private static final WRITE_CORE_POOL_SIZE:I = 0x2

.field private static final WRITE_MAX_POOL_SIZE:I = 0x2

.field private static final WRITE_QUEUE_SIZE:I = 0x14

.field private static final WRITE_THREAD_NAME:Ljava/lang/String; = "FileManagerWriteTaskThreadPool"


# instance fields
.field private mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private mHandler:Ljava/util/concurrent/RejectedExecutionHandler;

.field private mLinkedBlockingQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mType:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool$Type;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool$Type;)V
    .locals 11
    .param p1, "type"    # Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool$Type;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v2, 0x2

    .line 41
    .local v2, "CORE_POOL_SIZE":I
    const/4 v3, 0x2

    .line 42
    .local v3, "MAX_POOL_SIZE":I
    const/16 v0, 0x14

    .line 44
    .local v0, "QUEUE_SIZE":I
    sget-object v1, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool$Type;->READ_FILE:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool$Type;

    if-ne p1, v1, :cond_0

    .line 45
    const/4 v2, 0x2

    .line 46
    const/4 v3, 0x2

    .line 47
    const/16 v0, 0x12c

    .line 48
    const-string v10, "FileManagerReadTaskThreadPool"

    .line 55
    .local v10, "THREAD_NAME":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool;->mType:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool$Type;

    .line 56
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool;->mLinkedBlockingQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 57
    new-instance v1, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool$1;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool$1;-><init>(Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool;->mHandler:Ljava/util/concurrent/RejectedExecutionHandler;

    .line 68
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool;->mLinkedBlockingQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v8, Lcom/lenovo/scg/gallery3d/util/PriorityThreadFactory;

    const/16 v9, 0x13

    invoke-direct {v8, v10, v9}, Lcom/lenovo/scg/gallery3d/util/PriorityThreadFactory;-><init>(Ljava/lang/String;I)V

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool;->mHandler:Ljava/util/concurrent/RejectedExecutionHandler;

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 73
    return-void

    .line 50
    .end local v10    # "THREAD_NAME":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x2

    .line 51
    const/4 v3, 0x2

    .line 52
    const/16 v0, 0x14

    .line 53
    const-string v10, "FileManagerWriteTaskThreadPool"

    .restart local v10    # "THREAD_NAME":Ljava/lang/String;
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool;)Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool$Type;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool;->mType:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool$Type;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool;->mLinkedBlockingQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 87
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 91
    return-void
.end method

.method public submit(Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/Task;)V
    .locals 1
    .param p1, "task"    # Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/Task;

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool;->submit(Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/Task;Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskListener;)V

    .line 83
    return-void
.end method

.method public submit(Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/Task;Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskListener;)V
    .locals 4
    .param p1, "task"    # Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/Task;
    .param p2, "listener"    # Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskListener;

    .prologue
    .line 76
    const-string/jumbo v1, "wangwf1_TaskThreadPool"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLinkedBlockingQueue.size() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool;->mLinkedBlockingQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool$TaskProxy;

    invoke-direct {v0, p0, p1, p2}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool$TaskProxy;-><init>(Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool;Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/Task;Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskListener;)V

    .line 78
    .local v0, "taskProxy":Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool$TaskProxy;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 79
    return-void
.end method
