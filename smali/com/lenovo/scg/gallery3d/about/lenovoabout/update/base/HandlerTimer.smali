.class public Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/HandlerTimer;
.super Ljava/lang/Object;
.source "HandlerTimer.java"


# instance fields
.field mEvery:J

.field mHandler:Landroid/os/Handler;

.field mInnerTask:Ljava/lang/Runnable;

.field mRunning:Z

.field mTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;J)V
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "every"    # J

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/HandlerTimer;->mHandler:Landroid/os/Handler;

    .line 10
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/HandlerTimer$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/HandlerTimer$1;-><init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/HandlerTimer;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/HandlerTimer;->mInnerTask:Ljava/lang/Runnable;

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/HandlerTimer;->mRunning:Z

    .line 24
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/HandlerTimer;->mTask:Ljava/lang/Runnable;

    .line 25
    iput-wide p2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/HandlerTimer;->mEvery:J

    .line 26
    return-void
.end method


# virtual methods
.method public start()V
    .locals 4

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/HandlerTimer;->mRunning:Z

    if-eqz v0, :cond_0

    .line 35
    :goto_0
    return-void

    .line 32
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/HandlerTimer;->mRunning:Z

    .line 33
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/HandlerTimer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/HandlerTimer;->mInnerTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 34
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/HandlerTimer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/HandlerTimer;->mInnerTask:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/HandlerTimer;->mEvery:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/HandlerTimer;->mRunning:Z

    .line 38
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/HandlerTimer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/HandlerTimer;->mInnerTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 39
    return-void
.end method
