.class public final Lledroid/nac/client/ExecutorManager;
.super Ljava/lang/Object;
.source "ExecutorManager.java"


# static fields
.field private static final CORE_POOL_SIZE:I = 0x5

.field private static final sExecutorService:Ljava/util/concurrent/ExecutorService;

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    new-instance v0, Lledroid/nac/client/ExecutorManager$1;

    invoke-direct {v0}, Lledroid/nac/client/ExecutorManager$1;-><init>()V

    sput-object v0, Lledroid/nac/client/ExecutorManager;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 17
    const/4 v0, 0x5

    sget-object v1, Lledroid/nac/client/ExecutorManager;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lledroid/nac/client/ExecutorManager;->sExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lledroid/nac/client/ExecutorManager;->sExecutorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method
