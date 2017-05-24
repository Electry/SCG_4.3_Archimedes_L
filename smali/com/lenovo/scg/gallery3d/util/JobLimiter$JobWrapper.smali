.class Lcom/lenovo/scg/gallery3d/util/JobLimiter$JobWrapper;
.super Ljava/lang/Object;
.source "JobLimiter.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/util/Future;
.implements Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/util/JobLimiter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JobWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/lenovo/scg/gallery3d/util/Future",
        "<TT;>;",
        "Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mDelegate:Lcom/lenovo/scg/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/scg/gallery3d/util/Future",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mJob:Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mListener:Lcom/lenovo/scg/gallery3d/util/FutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/scg/gallery3d/util/FutureListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mState:I


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;Lcom/lenovo/scg/gallery3d/util/FutureListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job",
            "<TT;>;",
            "Lcom/lenovo/scg/gallery3d/util/FutureListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lcom/lenovo/scg/gallery3d/util/JobLimiter$JobWrapper;, "Lcom/lenovo/scg/gallery3d/util/JobLimiter$JobWrapper<TT;>;"
    .local p1, "job":Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;, "Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job<TT;>;"
    .local p2, "listener":Lcom/lenovo/scg/gallery3d/util/FutureListener;, "Lcom/lenovo/scg/gallery3d/util/FutureListener<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/util/JobLimiter$JobWrapper;->mState:I

    .line 61
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/util/JobLimiter$JobWrapper;->mJob:Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;

    .line 62
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/util/JobLimiter$JobWrapper;->mListener:Lcom/lenovo/scg/gallery3d/util/FutureListener;

    .line 63
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 72
    .local p0, "this":Lcom/lenovo/scg/gallery3d/util/JobLimiter$JobWrapper;, "Lcom/lenovo/scg/gallery3d/util/JobLimiter$JobWrapper<TT;>;"
    const/4 v0, 0x0

    .line 73
    .local v0, "listener":Lcom/lenovo/scg/gallery3d/util/FutureListener;, "Lcom/lenovo/scg/gallery3d/util/FutureListener<TT;>;"
    monitor-enter p0

    .line 74
    :try_start_0
    iget v1, p0, Lcom/lenovo/scg/gallery3d/util/JobLimiter$JobWrapper;->mState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 75
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/util/JobLimiter$JobWrapper;->mListener:Lcom/lenovo/scg/gallery3d/util/FutureListener;

    .line 76
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/util/JobLimiter$JobWrapper;->mJob:Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;

    .line 77
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/util/JobLimiter$JobWrapper;->mListener:Lcom/lenovo/scg/gallery3d/util/FutureListener;

    .line 78
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/util/JobLimiter$JobWrapper;->mDelegate:Lcom/lenovo/scg/gallery3d/util/Future;

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/util/JobLimiter$JobWrapper;->mDelegate:Lcom/lenovo/scg/gallery3d/util/Future;

    invoke-interface {v1}, Lcom/lenovo/scg/gallery3d/util/Future;->cancel()V

    .line 80
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/util/JobLimiter$JobWrapper;->mDelegate:Lcom/lenovo/scg/gallery3d/util/Future;

    .line 83
    :cond_0
    const/4 v1, 0x2

    iput v1, p0, Lcom/lenovo/scg/gallery3d/util/JobLimiter$JobWrapper;->mState:I

    .line 84
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/util/JobLimiter$JobWrapper;->mResult:Ljava/lang/Object;

    .line 85
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 86
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/lenovo/scg/gallery3d/util/FutureListener;->onFutureDone(Lcom/lenovo/scg/gallery3d/util/Future;)V

    .line 88
    :cond_1
    return-void

    .line 86
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public declared-synchronized get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Lcom/lenovo/scg/gallery3d/util/JobLimiter$JobWrapper;, "Lcom/lenovo/scg/gallery3d/util/JobLimiter$JobWrapper<TT;>;"
    monitor-enter p0

    :goto_0
    :try_start_0
    iget v0, p0, Lcom/lenovo/scg/gallery3d/util/JobLimiter$JobWrapper;->mState:I

    if-nez v0, :cond_0

    .line 105
    invoke-static {p0}, Lcom/lenovo/scg/gallery3d/common/Utils;->waitWithoutInterrupt(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 107
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/util/JobLimiter$JobWrapper;->mResult:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized isCancelled()Z
    .locals 2

    .prologue
    .line 92
    .local p0, "this":Lcom/lenovo/scg/gallery3d/util/JobLimiter$JobWrapper;, "Lcom/lenovo/scg/gallery3d/util/JobLimiter$JobWrapper<TT;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/lenovo/scg/gallery3d/util/JobLimiter$JobWrapper;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 98
    .local p0, "this":Lcom/lenovo/scg/gallery3d/util/JobLimiter$JobWrapper;, "Lcom/lenovo/scg/gallery3d/util/JobLimiter$JobWrapper<TT;>;"
    iget v0, p0, Lcom/lenovo/scg/gallery3d/util/JobLimiter$JobWrapper;->mState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 9
    .param p1, "jc"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/lenovo/scg/gallery3d/util/JobLimiter$JobWrapper;, "Lcom/lenovo/scg/gallery3d/util/JobLimiter$JobWrapper<TT;>;"
    const/4 v8, 0x2

    const/4 v4, 0x0

    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, "job":Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;, "Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job<TT;>;"
    monitor-enter p0

    .line 119
    :try_start_0
    iget v5, p0, Lcom/lenovo/scg/gallery3d/util/JobLimiter$JobWrapper;->mState:I

    if-ne v5, v8, :cond_1

    monitor-exit p0

    move-object v2, v4

    .line 139
    :cond_0
    :goto_0
    return-object v2

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/util/JobLimiter$JobWrapper;->mJob:Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;

    .line 121
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    const/4 v2, 0x0

    .line 124
    .local v2, "result":Ljava/lang/Object;, "TT;"
    :try_start_1
    invoke-interface {v0, p1}, Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;->run(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 128
    .end local v2    # "result":Ljava/lang/Object;, "TT;"
    :goto_1
    const/4 v1, 0x0

    .line 129
    .local v1, "listener":Lcom/lenovo/scg/gallery3d/util/FutureListener;, "Lcom/lenovo/scg/gallery3d/util/FutureListener<TT;>;"
    monitor-enter p0

    .line 130
    :try_start_2
    iget v5, p0, Lcom/lenovo/scg/gallery3d/util/JobLimiter$JobWrapper;->mState:I

    if-ne v5, v8, :cond_2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v2, v4

    goto :goto_0

    .line 121
    .end local v1    # "listener":Lcom/lenovo/scg/gallery3d/util/FutureListener;, "Lcom/lenovo/scg/gallery3d/util/FutureListener<TT;>;"
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 125
    .restart local v2    # "result":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v3

    .line 126
    .local v3, "t":Ljava/lang/Throwable;
    const-string v5, "JobLimiter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error executing job: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 131
    .end local v2    # "result":Ljava/lang/Object;, "TT;"
    .end local v3    # "t":Ljava/lang/Throwable;
    .restart local v1    # "listener":Lcom/lenovo/scg/gallery3d/util/FutureListener;, "Lcom/lenovo/scg/gallery3d/util/FutureListener<TT;>;"
    :cond_2
    const/4 v4, 0x1

    :try_start_4
    iput v4, p0, Lcom/lenovo/scg/gallery3d/util/JobLimiter$JobWrapper;->mState:I

    .line 132
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/util/JobLimiter$JobWrapper;->mListener:Lcom/lenovo/scg/gallery3d/util/FutureListener;

    .line 133
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/util/JobLimiter$JobWrapper;->mListener:Lcom/lenovo/scg/gallery3d/util/FutureListener;

    .line 134
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/util/JobLimiter$JobWrapper;->mJob:Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;

    .line 135
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/util/JobLimiter$JobWrapper;->mResult:Ljava/lang/Object;

    .line 136
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 137
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 138
    if-eqz v1, :cond_0

    invoke-interface {v1, p0}, Lcom/lenovo/scg/gallery3d/util/FutureListener;->onFutureDone(Lcom/lenovo/scg/gallery3d/util/Future;)V

    goto :goto_0

    .line 137
    :catchall_1
    move-exception v4

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v4
.end method

.method public declared-synchronized setFuture(Lcom/lenovo/scg/gallery3d/util/Future;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/scg/gallery3d/util/Future",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lcom/lenovo/scg/gallery3d/util/JobLimiter$JobWrapper;, "Lcom/lenovo/scg/gallery3d/util/JobLimiter$JobWrapper<TT;>;"
    .local p1, "future":Lcom/lenovo/scg/gallery3d/util/Future;, "Lcom/lenovo/scg/gallery3d/util/Future<TT;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/lenovo/scg/gallery3d/util/JobLimiter$JobWrapper;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 68
    :goto_0
    monitor-exit p0

    return-void

    .line 67
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/util/JobLimiter$JobWrapper;->mDelegate:Lcom/lenovo/scg/gallery3d/util/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public waitDone()V
    .locals 0

    .prologue
    .line 112
    .local p0, "this":Lcom/lenovo/scg/gallery3d/util/JobLimiter$JobWrapper;, "Lcom/lenovo/scg/gallery3d/util/JobLimiter$JobWrapper<TT;>;"
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/util/JobLimiter$JobWrapper;->get()Ljava/lang/Object;

    .line 113
    return-void
.end method
