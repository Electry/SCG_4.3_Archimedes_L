.class public abstract Lcn/jingling/lib/camera/WonderAsyncTask;
.super Ljava/lang/Object;
.source "WonderAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/jingling/lib/camera/WonderAsyncTask$AsyncTaskResult;,
        Lcn/jingling/lib/camera/WonderAsyncTask$InternalHandler;,
        Lcn/jingling/lib/camera/WonderAsyncTask$SerialExecutor;,
        Lcn/jingling/lib/camera/WonderAsyncTask$Status;,
        Lcn/jingling/lib/camera/WonderAsyncTask$WorkerRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$cn$jingling$lib$camera$WonderAsyncTask$Status:[I = null

.field private static final CORE_POOL_SIZE:I = 0x5

.field public static final DUAL_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final KEEP_ALIVE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "AsyncTask"

.field private static final MAXIMUM_POOL_SIZE:I = 0x80

.field private static final MESSAGE_POST_PROGRESS:I = 0x2

.field private static final MESSAGE_POST_RESULT:I = 0x1

.field public static final SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

.field public static final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static volatile sDefaultExecutor:Ljava/util/concurrent/Executor;

.field private static final sHandler:Lcn/jingling/lib/camera/WonderAsyncTask$InternalHandler;

.field private static final sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mFuture:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<TResult;>;"
        }
    .end annotation
.end field

.field private volatile mStatus:Lcn/jingling/lib/camera/WonderAsyncTask$Status;

.field private final mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mWorker:Lcn/jingling/lib/camera/WonderAsyncTask$WorkerRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/jingling/lib/camera/WonderAsyncTask$WorkerRunnable",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic $SWITCH_TABLE$cn$jingling$lib$camera$WonderAsyncTask$Status()[I
    .locals 3

    .prologue
    .line 30
    sget-object v0, Lcn/jingling/lib/camera/WonderAsyncTask;->$SWITCH_TABLE$cn$jingling$lib$camera$WonderAsyncTask$Status:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcn/jingling/lib/camera/WonderAsyncTask$Status;->values()[Lcn/jingling/lib/camera/WonderAsyncTask$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcn/jingling/lib/camera/WonderAsyncTask$Status;->FINISHED:Lcn/jingling/lib/camera/WonderAsyncTask$Status;

    invoke-virtual {v1}, Lcn/jingling/lib/camera/WonderAsyncTask$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcn/jingling/lib/camera/WonderAsyncTask$Status;->PENDING:Lcn/jingling/lib/camera/WonderAsyncTask$Status;

    invoke-virtual {v1}, Lcn/jingling/lib/camera/WonderAsyncTask$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcn/jingling/lib/camera/WonderAsyncTask$Status;->RUNNING:Lcn/jingling/lib/camera/WonderAsyncTask$Status;

    invoke-virtual {v1}, Lcn/jingling/lib/camera/WonderAsyncTask$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcn/jingling/lib/camera/WonderAsyncTask;->$SWITCH_TABLE$cn$jingling$lib$camera$WonderAsyncTask$Status:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 37
    new-instance v0, Lcn/jingling/lib/camera/WonderAsyncTask$1;

    invoke-direct {v0}, Lcn/jingling/lib/camera/WonderAsyncTask$1;-><init>()V

    sput-object v0, Lcn/jingling/lib/camera/WonderAsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 46
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcn/jingling/lib/camera/WonderAsyncTask;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 51
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x5

    const/16 v3, 0x80

    const-wide/16 v4, 0x1

    .line 52
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcn/jingling/lib/camera/WonderAsyncTask;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v8, Lcn/jingling/lib/camera/WonderAsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 53
    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    .line 51
    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v1, Lcn/jingling/lib/camera/WonderAsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 59
    invoke-static {}, Lcn/jingling/lib/camera/ApiHelper;->hasHoneycomb()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcn/jingling/lib/camera/WonderAsyncTask$SerialExecutor;

    invoke-direct {v0, v10}, Lcn/jingling/lib/camera/WonderAsyncTask$SerialExecutor;-><init>(Lcn/jingling/lib/camera/WonderAsyncTask$SerialExecutor;)V

    :goto_0
    sput-object v0, Lcn/jingling/lib/camera/WonderAsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 63
    const/4 v0, 0x3

    sget-object v1, Lcn/jingling/lib/camera/WonderAsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 62
    sput-object v0, Lcn/jingling/lib/camera/WonderAsyncTask;->DUAL_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 68
    new-instance v0, Lcn/jingling/lib/camera/WonderAsyncTask$InternalHandler;

    invoke-direct {v0, v10}, Lcn/jingling/lib/camera/WonderAsyncTask$InternalHandler;-><init>(Lcn/jingling/lib/camera/WonderAsyncTask$InternalHandler;)V

    sput-object v0, Lcn/jingling/lib/camera/WonderAsyncTask;->sHandler:Lcn/jingling/lib/camera/WonderAsyncTask$InternalHandler;

    .line 70
    sget-object v0, Lcn/jingling/lib/camera/WonderAsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Lcn/jingling/lib/camera/WonderAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    return-void

    .line 60
    :cond_0
    sget-object v0, Lcn/jingling/lib/camera/WonderAsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 138
    .local p0, "this":Lcn/jingling/lib/camera/WonderAsyncTask;, "Lcn/jingling/lib/camera/WonderAsyncTask<TParams;TProgress;TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    sget-object v0, Lcn/jingling/lib/camera/WonderAsyncTask$Status;->PENDING:Lcn/jingling/lib/camera/WonderAsyncTask$Status;

    iput-object v0, p0, Lcn/jingling/lib/camera/WonderAsyncTask;->mStatus:Lcn/jingling/lib/camera/WonderAsyncTask$Status;

    .line 76
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcn/jingling/lib/camera/WonderAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 77
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcn/jingling/lib/camera/WonderAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 139
    new-instance v0, Lcn/jingling/lib/camera/WonderAsyncTask$2;

    invoke-direct {v0, p0}, Lcn/jingling/lib/camera/WonderAsyncTask$2;-><init>(Lcn/jingling/lib/camera/WonderAsyncTask;)V

    iput-object v0, p0, Lcn/jingling/lib/camera/WonderAsyncTask;->mWorker:Lcn/jingling/lib/camera/WonderAsyncTask$WorkerRunnable;

    .line 149
    new-instance v0, Lcn/jingling/lib/camera/WonderAsyncTask$3;

    iget-object v1, p0, Lcn/jingling/lib/camera/WonderAsyncTask;->mWorker:Lcn/jingling/lib/camera/WonderAsyncTask$WorkerRunnable;

    invoke-direct {v0, p0, v1}, Lcn/jingling/lib/camera/WonderAsyncTask$3;-><init>(Lcn/jingling/lib/camera/WonderAsyncTask;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcn/jingling/lib/camera/WonderAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    .line 164
    return-void
.end method

.method static synthetic access$0(Lcn/jingling/lib/camera/WonderAsyncTask;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 494
    invoke-direct {p0, p1}, Lcn/jingling/lib/camera/WonderAsyncTask;->finish(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1(Lcn/jingling/lib/camera/WonderAsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcn/jingling/lib/camera/WonderAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$2(Lcn/jingling/lib/camera/WonderAsyncTask;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcn/jingling/lib/camera/WonderAsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcn/jingling/lib/camera/WonderAsyncTask;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcn/jingling/lib/camera/WonderAsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 470
    sget-object v0, Lcn/jingling/lib/camera/WonderAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 471
    return-void
.end method

.method private finish(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 495
    .local p0, "this":Lcn/jingling/lib/camera/WonderAsyncTask;, "Lcn/jingling/lib/camera/WonderAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    invoke-virtual {p0}, Lcn/jingling/lib/camera/WonderAsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    invoke-virtual {p0, p1}, Lcn/jingling/lib/camera/WonderAsyncTask;->onCancelled(Ljava/lang/Object;)V

    .line 500
    :goto_0
    sget-object v0, Lcn/jingling/lib/camera/WonderAsyncTask$Status;->FINISHED:Lcn/jingling/lib/camera/WonderAsyncTask$Status;

    iput-object v0, p0, Lcn/jingling/lib/camera/WonderAsyncTask;->mStatus:Lcn/jingling/lib/camera/WonderAsyncTask$Status;

    .line 501
    return-void

    .line 498
    :cond_0
    invoke-virtual {p0, p1}, Lcn/jingling/lib/camera/WonderAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static init()V
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcn/jingling/lib/camera/WonderAsyncTask;->sHandler:Lcn/jingling/lib/camera/WonderAsyncTask$InternalHandler;

    invoke-virtual {v0}, Lcn/jingling/lib/camera/WonderAsyncTask$InternalHandler;->getLooper()Landroid/os/Looper;

    .line 128
    return-void
.end method

.method private postResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcn/jingling/lib/camera/WonderAsyncTask;, "Lcn/jingling/lib/camera/WonderAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    const/4 v5, 0x1

    .line 175
    sget-object v1, Lcn/jingling/lib/camera/WonderAsyncTask;->sHandler:Lcn/jingling/lib/camera/WonderAsyncTask$InternalHandler;

    .line 176
    new-instance v2, Lcn/jingling/lib/camera/WonderAsyncTask$AsyncTaskResult;

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v2, p0, v3}, Lcn/jingling/lib/camera/WonderAsyncTask$AsyncTaskResult;-><init>(Lcn/jingling/lib/camera/WonderAsyncTask;[Ljava/lang/Object;)V

    .line 175
    invoke-virtual {v1, v5, v2}, Lcn/jingling/lib/camera/WonderAsyncTask$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 177
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 178
    return-object p1
.end method

.method private postResultIfNotInvoked(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, "this":Lcn/jingling/lib/camera/WonderAsyncTask;, "Lcn/jingling/lib/camera/WonderAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    iget-object v1, p0, Lcn/jingling/lib/camera/WonderAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 168
    .local v0, "wasTaskInvoked":Z
    if-nez v0, :cond_0

    .line 169
    invoke-direct {p0, p1}, Lcn/jingling/lib/camera/WonderAsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    :cond_0
    return-void
.end method

.method public static setDefaultExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p0, "exec"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 132
    sput-object p0, Lcn/jingling/lib/camera/WonderAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    .line 133
    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 2
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .line 321
    .local p0, "this":Lcn/jingling/lib/camera/WonderAsyncTask;, "Lcn/jingling/lib/camera/WonderAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcn/jingling/lib/camera/WonderAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 322
    iget-object v0, p0, Lcn/jingling/lib/camera/WonderAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method protected varargs abstract doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method public final varargs execute([Ljava/lang/Object;)Lcn/jingling/lib/camera/WonderAsyncTask;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcn/jingling/lib/camera/WonderAsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 389
    .local p0, "this":Lcn/jingling/lib/camera/WonderAsyncTask;, "Lcn/jingling/lib/camera/WonderAsyncTask<TParams;TProgress;TResult;>;"
    sget-object v0, Lcn/jingling/lib/camera/WonderAsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcn/jingling/lib/camera/WonderAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcn/jingling/lib/camera/WonderAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public final varargs executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcn/jingling/lib/camera/WonderAsyncTask;
    .locals 2
    .param p1, "exec"    # Ljava/util/concurrent/Executor;
    .param p2, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Lcn/jingling/lib/camera/WonderAsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 438
    .local p0, "this":Lcn/jingling/lib/camera/WonderAsyncTask;, "Lcn/jingling/lib/camera/WonderAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcn/jingling/lib/camera/WonderAsyncTask;->mStatus:Lcn/jingling/lib/camera/WonderAsyncTask$Status;

    sget-object v1, Lcn/jingling/lib/camera/WonderAsyncTask$Status;->PENDING:Lcn/jingling/lib/camera/WonderAsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 439
    invoke-static {}, Lcn/jingling/lib/camera/WonderAsyncTask;->$SWITCH_TABLE$cn$jingling$lib$camera$WonderAsyncTask$Status()[I

    move-result-object v0

    iget-object v1, p0, Lcn/jingling/lib/camera/WonderAsyncTask;->mStatus:Lcn/jingling/lib/camera/WonderAsyncTask$Status;

    invoke-virtual {v1}, Lcn/jingling/lib/camera/WonderAsyncTask$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 450
    :cond_0
    sget-object v0, Lcn/jingling/lib/camera/WonderAsyncTask$Status;->RUNNING:Lcn/jingling/lib/camera/WonderAsyncTask$Status;

    iput-object v0, p0, Lcn/jingling/lib/camera/WonderAsyncTask;->mStatus:Lcn/jingling/lib/camera/WonderAsyncTask$Status;

    .line 452
    invoke-virtual {p0}, Lcn/jingling/lib/camera/WonderAsyncTask;->onPreExecute()V

    .line 454
    iget-object v0, p0, Lcn/jingling/lib/camera/WonderAsyncTask;->mWorker:Lcn/jingling/lib/camera/WonderAsyncTask$WorkerRunnable;

    iput-object p2, v0, Lcn/jingling/lib/camera/WonderAsyncTask$WorkerRunnable;->mParams:[Ljava/lang/Object;

    .line 455
    iget-object v0, p0, Lcn/jingling/lib/camera/WonderAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 457
    return-object p0

    .line 441
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 444
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final varargs executeOnThreadPool([Ljava/lang/Object;)Lcn/jingling/lib/camera/WonderAsyncTask;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcn/jingling/lib/camera/WonderAsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 398
    .local p0, "this":Lcn/jingling/lib/camera/WonderAsyncTask;, "Lcn/jingling/lib/camera/WonderAsyncTask<TParams;TProgress;TResult;>;"
    sget-object v0, Lcn/jingling/lib/camera/WonderAsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcn/jingling/lib/camera/WonderAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcn/jingling/lib/camera/WonderAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 337
    .local p0, "this":Lcn/jingling/lib/camera/WonderAsyncTask;, "Lcn/jingling/lib/camera/WonderAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcn/jingling/lib/camera/WonderAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 357
    .local p0, "this":Lcn/jingling/lib/camera/WonderAsyncTask;, "Lcn/jingling/lib/camera/WonderAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcn/jingling/lib/camera/WonderAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getStatus()Lcn/jingling/lib/camera/WonderAsyncTask$Status;
    .locals 1

    .prologue
    .line 187
    .local p0, "this":Lcn/jingling/lib/camera/WonderAsyncTask;, "Lcn/jingling/lib/camera/WonderAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcn/jingling/lib/camera/WonderAsyncTask;->mStatus:Lcn/jingling/lib/camera/WonderAsyncTask$Status;

    return-object v0
.end method

.method public final isCancelled()Z
    .locals 1

    .prologue
    .line 288
    .local p0, "this":Lcn/jingling/lib/camera/WonderAsyncTask;, "Lcn/jingling/lib/camera/WonderAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcn/jingling/lib/camera/WonderAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 275
    .local p0, "this":Lcn/jingling/lib/camera/WonderAsyncTask;, "Lcn/jingling/lib/camera/WonderAsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method protected onCancelled(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 259
    .local p0, "this":Lcn/jingling/lib/camera/WonderAsyncTask;, "Lcn/jingling/lib/camera/WonderAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    invoke-virtual {p0}, Lcn/jingling/lib/camera/WonderAsyncTask;->onCancelled()V

    .line 260
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 230
    .local p0, "this":Lcn/jingling/lib/camera/WonderAsyncTask;, "Lcn/jingling/lib/camera/WonderAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 215
    .local p0, "this":Lcn/jingling/lib/camera/WonderAsyncTask;, "Lcn/jingling/lib/camera/WonderAsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "values"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 242
    .local p0, "this":Lcn/jingling/lib/camera/WonderAsyncTask;, "Lcn/jingling/lib/camera/WonderAsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method protected final varargs publishProgress([Ljava/lang/Object;)V
    .locals 3
    .param p1, "values"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 488
    .local p0, "this":Lcn/jingling/lib/camera/WonderAsyncTask;, "Lcn/jingling/lib/camera/WonderAsyncTask<TParams;TProgress;TResult;>;"
    invoke-virtual {p0}, Lcn/jingling/lib/camera/WonderAsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 489
    sget-object v0, Lcn/jingling/lib/camera/WonderAsyncTask;->sHandler:Lcn/jingling/lib/camera/WonderAsyncTask$InternalHandler;

    const/4 v1, 0x2

    .line 490
    new-instance v2, Lcn/jingling/lib/camera/WonderAsyncTask$AsyncTaskResult;

    invoke-direct {v2, p0, p1}, Lcn/jingling/lib/camera/WonderAsyncTask$AsyncTaskResult;-><init>(Lcn/jingling/lib/camera/WonderAsyncTask;[Ljava/lang/Object;)V

    .line 489
    invoke-virtual {v0, v1, v2}, Lcn/jingling/lib/camera/WonderAsyncTask$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 490
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 492
    :cond_0
    return-void
.end method
