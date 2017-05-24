.class public Lcom/lenovo/scg/gallery3d/net/NetThreadPool;
.super Ljava/lang/Object;
.source "NetThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/net/NetThreadPool$1;,
        Lcom/lenovo/scg/gallery3d/net/NetThreadPool$TaskGC;
    }
.end annotation


# static fields
.field private static final KEEP_ALIVE_TIME:I = 0xa

.field private static final TAG:Ljava/lang/String; = "ThreadPool"

.field private static mContext:Landroid/content/Context;

.field private static mMapThreadPool:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumPoolType;",
            "Lcom/lenovo/scg/gallery3d/net/NetThreadPool;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private CORE_POOL_SIZE:I

.field private MAX_POOL_SIZE:I

.field private mArrTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/net/NetThreadTask;",
            ">;"
        }
    .end annotation
.end field

.field private mLock:[B

.field private mPoolType:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumPoolType;

.field private mTaskGC:Lcom/lenovo/scg/gallery3d/net/NetThreadPool$TaskGC;

.field private mThreadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->mContext:Landroid/content/Context;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->mMapThreadPool:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumPoolType;)V
    .locals 2
    .param p1, "poolType"    # Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumPoolType;

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x2

    iput v0, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->CORE_POOL_SIZE:I

    .line 22
    const/4 v0, 0x5

    iput v0, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->MAX_POOL_SIZE:I

    .line 28
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->mThreadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 30
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->mLock:[B

    .line 32
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->mTaskGC:Lcom/lenovo/scg/gallery3d/net/NetThreadPool$TaskGC;

    .line 34
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->mArrTasks:Ljava/util/ArrayList;

    .line 41
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->mPoolType:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumPoolType;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->mArrTasks:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Lcom/lenovo/scg/gallery3d/net/NetThreadPool$TaskGC;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/gallery3d/net/NetThreadPool$TaskGC;-><init>(Lcom/lenovo/scg/gallery3d/net/NetThreadPool;Lcom/lenovo/scg/gallery3d/net/NetThreadPool$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->mTaskGC:Lcom/lenovo/scg/gallery3d/net/NetThreadPool$TaskGC;

    .line 44
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->mLock:[B

    .line 45
    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/net/NetThreadPool;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/net/NetThreadPool;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->mArrTasks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getInstance(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumPoolType;)Lcom/lenovo/scg/gallery3d/net/NetThreadPool;
    .locals 2
    .param p0, "poolType"    # Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumPoolType;

    .prologue
    .line 48
    sget-object v1, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->mMapThreadPool:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;

    .line 49
    .local v0, "pool":Lcom/lenovo/scg/gallery3d/net/NetThreadPool;
    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;

    .end local v0    # "pool":Lcom/lenovo/scg/gallery3d/net/NetThreadPool;
    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;-><init>(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumPoolType;)V

    .line 51
    .restart local v0    # "pool":Lcom/lenovo/scg/gallery3d/net/NetThreadPool;
    sget-object v1, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->mMapThreadPool:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_0
    return-object v0
.end method

.method private shutDown()V
    .locals 4

    .prologue
    .line 69
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->mArrTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 70
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 71
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->mArrTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/net/NetThreadTask;

    .line 72
    .local v2, "task":Lcom/lenovo/scg/gallery3d/net/NetThreadTask;
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/net/NetThreadTask;->cancelTask()V

    .line 73
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/net/NetThreadTask;->interrupt()V

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    .end local v2    # "task":Lcom/lenovo/scg/gallery3d/net/NetThreadTask;
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->mArrTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 76
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->mThreadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 77
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->mThreadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 79
    return-void
.end method


# virtual methods
.method public getTask(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;)Lcom/lenovo/scg/gallery3d/net/NetThreadTask;
    .locals 2
    .param p1, "taskType"    # Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;
    .param p2, "actionType"    # Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;

    .prologue
    .line 91
    sget-object v1, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->mContext:Landroid/content/Context;

    invoke-static {p1, v1, p2}, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskFactory;->createInstance(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;Landroid/content/Context;Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;)Lcom/lenovo/scg/gallery3d/net/NetThreadTask;

    move-result-object v0

    .line 92
    .local v0, "task":Lcom/lenovo/scg/gallery3d/net/NetThreadTask;
    return-object v0
.end method

.method public releaseInstance()V
    .locals 3

    .prologue
    .line 58
    sget-object v1, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->mMapThreadPool:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->mPoolType:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumPoolType;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;

    .line 59
    .local v0, "poolInstance":Lcom/lenovo/scg/gallery3d/net/NetThreadPool;
    if-eqz v0, :cond_0

    .line 60
    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->shutDown()V

    .line 61
    sget-object v1, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->mMapThreadPool:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->mPoolType:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumPoolType;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_0
    return-void
.end method

.method public removeTask(Lcom/lenovo/scg/gallery3d/net/NetThreadTask;)V
    .locals 2
    .param p1, "task"    # Lcom/lenovo/scg/gallery3d/net/NetThreadTask;

    .prologue
    .line 110
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->mThreadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v1, :cond_1

    .line 111
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->mThreadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    .line 112
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->mArrTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 113
    .local v0, "nIndex":I
    if-ltz v0, :cond_0

    .line 114
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->mArrTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 116
    :cond_0
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/net/NetThreadTask;->interrupt()V

    .line 120
    .end local v0    # "nIndex":I
    :cond_1
    return-void
.end method

.method public runTask(Lcom/lenovo/scg/gallery3d/net/NetThreadTask;Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;Ljava/lang/Object;)V
    .locals 1
    .param p1, "task"    # Lcom/lenovo/scg/gallery3d/net/NetThreadTask;
    .param p2, "listener"    # Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;
    .param p3, "userContext"    # Ljava/lang/Object;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->mThreadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p1, p2, p3}, Lcom/lenovo/scg/gallery3d/net/NetThreadTask;->setListener(Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;Ljava/lang/Object;)V

    .line 100
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->mTaskGC:Lcom/lenovo/scg/gallery3d/net/NetThreadPool$TaskGC;

    invoke-virtual {p1, v0}, Lcom/lenovo/scg/gallery3d/net/NetThreadTask;->setTaskGcListener(Lcom/lenovo/scg/gallery3d/net/NetThreadTask$TaskGcListener;)V

    .line 101
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->mArrTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->mThreadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 105
    :cond_0
    return-void
.end method

.method public setContext(Landroid/content/Context;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nTheadCount"    # I

    .prologue
    .line 82
    sput-object p1, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->mContext:Landroid/content/Context;

    .line 84
    iput p2, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->CORE_POOL_SIZE:I

    .line 85
    mul-int/lit8 v0, p2, 0x2

    iput v0, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->MAX_POOL_SIZE:I

    .line 86
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    iget v2, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->CORE_POOL_SIZE:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->MAX_POOL_SIZE:I

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lcom/lenovo/scg/gallery3d/net/NetPriorityThreadFactory;

    const-string/jumbo v0, "scg net thread-pool"

    const/16 v9, 0x13

    invoke-direct {v8, v0, v9}, Lcom/lenovo/scg/gallery3d/net/NetPriorityThreadFactory;-><init>(Ljava/lang/String;I)V

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->mThreadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 88
    return-void
.end method
