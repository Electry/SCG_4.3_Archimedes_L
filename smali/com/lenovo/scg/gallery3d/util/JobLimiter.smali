.class public Lcom/lenovo/scg/gallery3d/util/JobLimiter;
.super Ljava/lang/Object;
.source "JobLimiter.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/util/JobLimiter$JobWrapper;
    }
.end annotation


# static fields
.field private static final STATE_CANCELLED:I = 0x2

.field private static final STATE_DONE:I = 0x1

.field private static final STATE_INIT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "JobLimiter"


# instance fields
.field private final mJobs:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/lenovo/scg/gallery3d/util/JobLimiter$JobWrapper",
            "<*>;>;"
        }
    .end annotation
.end field

.field private mLimit:I

.field private final mPool:Lcom/lenovo/scg/gallery3d/util/ThreadPool;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/util/ThreadPool;I)V
    .locals 1
    .param p1, "pool"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool;
    .param p2, "limit"    # I

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/util/JobLimiter;->mJobs:Ljava/util/LinkedList;

    .line 144
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/util/ThreadPool;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/util/JobLimiter;->mPool:Lcom/lenovo/scg/gallery3d/util/ThreadPool;

    .line 145
    iput p2, p0, Lcom/lenovo/scg/gallery3d/util/JobLimiter;->mLimit:I

    .line 146
    return-void
.end method

.method private submitTasksIfAllowed()V
    .locals 2

    .prologue
    .line 157
    :cond_0
    :goto_0
    iget v1, p0, Lcom/lenovo/scg/gallery3d/util/JobLimiter;->mLimit:I

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/util/JobLimiter;->mJobs:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 158
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/util/JobLimiter;->mJobs:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/util/JobLimiter$JobWrapper;

    .line 159
    .local v0, "wrapper":Lcom/lenovo/scg/gallery3d/util/JobLimiter$JobWrapper;
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/util/JobLimiter$JobWrapper;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 160
    iget v1, p0, Lcom/lenovo/scg/gallery3d/util/JobLimiter;->mLimit:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/util/JobLimiter;->mLimit:I

    .line 161
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/util/JobLimiter;->mPool:Lcom/lenovo/scg/gallery3d/util/ThreadPool;

    invoke-virtual {v1, v0, p0}, Lcom/lenovo/scg/gallery3d/util/ThreadPool;->submit(Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;Lcom/lenovo/scg/gallery3d/util/FutureListener;)Lcom/lenovo/scg/gallery3d/util/Future;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/util/JobLimiter$JobWrapper;->setFuture(Lcom/lenovo/scg/gallery3d/util/Future;)V

    goto :goto_0

    .line 164
    .end local v0    # "wrapper":Lcom/lenovo/scg/gallery3d/util/JobLimiter$JobWrapper;
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized onFutureDone(Lcom/lenovo/scg/gallery3d/util/Future;)V
    .locals 1
    .param p1, "future"    # Lcom/lenovo/scg/gallery3d/util/Future;

    .prologue
    .line 168
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/lenovo/scg/gallery3d/util/JobLimiter;->mLimit:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/util/JobLimiter;->mLimit:I

    .line 169
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/util/JobLimiter;->submitTasksIfAllowed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    monitor-exit p0

    return-void

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized submit(Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;Lcom/lenovo/scg/gallery3d/util/FutureListener;)Lcom/lenovo/scg/gallery3d/util/Future;
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
    .line 149
    .local p1, "job":Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;, "Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job<TT;>;"
    .local p2, "listener":Lcom/lenovo/scg/gallery3d/util/FutureListener;, "Lcom/lenovo/scg/gallery3d/util/FutureListener<TT;>;"
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/lenovo/scg/gallery3d/util/JobLimiter$JobWrapper;

    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;

    invoke-direct {v0, v1, p2}, Lcom/lenovo/scg/gallery3d/util/JobLimiter$JobWrapper;-><init>(Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;Lcom/lenovo/scg/gallery3d/util/FutureListener;)V

    .line 150
    .local v0, "future":Lcom/lenovo/scg/gallery3d/util/JobLimiter$JobWrapper;, "Lcom/lenovo/scg/gallery3d/util/JobLimiter$JobWrapper<TT;>;"
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/util/JobLimiter;->mJobs:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 151
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/util/JobLimiter;->submitTasksIfAllowed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    monitor-exit p0

    return-object v0

    .line 149
    .end local v0    # "future":Lcom/lenovo/scg/gallery3d/util/JobLimiter$JobWrapper;, "Lcom/lenovo/scg/gallery3d/util/JobLimiter$JobWrapper<TT;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
