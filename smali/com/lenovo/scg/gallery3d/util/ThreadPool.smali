.class public Lcom/lenovo/scg/gallery3d/util/ThreadPool;
.super Ljava/lang/Object;
.source "ThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/util/ThreadPool$1;,
        Lcom/lenovo/scg/gallery3d/util/ThreadPool$Worker;,
        Lcom/lenovo/scg/gallery3d/util/ThreadPool$ResourceCounter;,
        Lcom/lenovo/scg/gallery3d/util/ThreadPool$CancelListener;,
        Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContextStub;,
        Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;,
        Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I = 0x4

.field public static final JOB_CONTEXT_STUB:Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;

.field private static final KEEP_ALIVE_TIME:I = 0xa

.field private static final MAX_POOL_SIZE:I = 0x8

.field public static final MODE_CPU:I = 0x1

.field public static final MODE_NETWORK:I = 0x2

.field public static final MODE_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ThreadPool"


# instance fields
.field mCpuCounter:Lcom/lenovo/scg/gallery3d/util/ThreadPool$ResourceCounter;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field mNetworkCounter:Lcom/lenovo/scg/gallery3d/util/ThreadPool$ResourceCounter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContextStub;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContextStub;-><init>(Lcom/lenovo/scg/gallery3d/util/ThreadPool$1;)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/util/ThreadPool;->JOB_CONTEXT_STUB:Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 84
    const/4 v0, 0x4

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/util/ThreadPool;-><init>(II)V

    .line 85
    return-void
.end method

.method public constructor <init>(II)V
    .locals 9
    .param p1, "initPoolSize"    # I
    .param p2, "maxPoolSize"    # I

    .prologue
    const/4 v1, 0x2

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/lenovo/scg/gallery3d/util/ThreadPool$ResourceCounter;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/util/ThreadPool$ResourceCounter;-><init>(I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/util/ThreadPool;->mCpuCounter:Lcom/lenovo/scg/gallery3d/util/ThreadPool$ResourceCounter;

    .line 41
    new-instance v0, Lcom/lenovo/scg/gallery3d/util/ThreadPool$ResourceCounter;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/util/ThreadPool$ResourceCounter;-><init>(I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/util/ThreadPool;->mNetworkCounter:Lcom/lenovo/scg/gallery3d/util/ThreadPool$ResourceCounter;

    .line 88
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lcom/lenovo/scg/gallery3d/util/PriorityThreadFactory;

    const-string/jumbo v0, "thread-pool"

    const/16 v2, 0xa

    invoke-direct {v8, v0, v2}, Lcom/lenovo/scg/gallery3d/util/PriorityThreadFactory;-><init>(Ljava/lang/String;I)V

    move v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/util/ThreadPool;->mExecutor:Ljava/util/concurrent/Executor;

    .line 93
    return-void
.end method


# virtual methods
.method public submit(Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;)Lcom/lenovo/scg/gallery3d/util/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job",
            "<TT;>;)",
            "Lcom/lenovo/scg/gallery3d/util/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, "job":Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;, "Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lenovo/scg/gallery3d/util/ThreadPool;->submit(Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;Lcom/lenovo/scg/gallery3d/util/FutureListener;)Lcom/lenovo/scg/gallery3d/util/Future;

    move-result-object v0

    return-object v0
.end method

.method public submit(Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;Lcom/lenovo/scg/gallery3d/util/FutureListener;)Lcom/lenovo/scg/gallery3d/util/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job",
            "<TT;>;",
            "Lcom/lenovo/scg/gallery3d/util/FutureListener",
            "<TT;>;)",
            "Lcom/lenovo/scg/gallery3d/util/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, "job":Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;, "Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job<TT;>;"
    .local p2, "listener":Lcom/lenovo/scg/gallery3d/util/FutureListener;, "Lcom/lenovo/scg/gallery3d/util/FutureListener<TT;>;"
    new-instance v0, Lcom/lenovo/scg/gallery3d/util/ThreadPool$Worker;

    invoke-direct {v0, p0, p1, p2}, Lcom/lenovo/scg/gallery3d/util/ThreadPool$Worker;-><init>(Lcom/lenovo/scg/gallery3d/util/ThreadPool;Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;Lcom/lenovo/scg/gallery3d/util/FutureListener;)V

    .line 99
    .local v0, "w":Lcom/lenovo/scg/gallery3d/util/ThreadPool$Worker;, "Lcom/lenovo/scg/gallery3d/util/ThreadPool$Worker<TT;>;"
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/util/ThreadPool;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 100
    return-object v0
.end method
