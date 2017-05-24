.class Lcom/lenovo/scg/gallery3d/ui/GLRootView$IdleRunner;
.super Ljava/lang/Object;
.source "GLRootView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ui/GLRootView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleRunner"
.end annotation


# instance fields
.field private mActive:Z

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ui/GLRootView;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/gallery3d/ui/GLRootView;)V
    .locals 1

    .prologue
    .line 597
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView$IdleRunner;->this$0:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 600
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView$IdleRunner;->mActive:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/ui/GLRootView;Lcom/lenovo/scg/gallery3d/ui/GLRootView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/ui/GLRootView;
    .param p2, "x1"    # Lcom/lenovo/scg/gallery3d/ui/GLRootView$1;

    .prologue
    .line 597
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/GLRootView$IdleRunner;-><init>(Lcom/lenovo/scg/gallery3d/ui/GLRootView;)V

    return-void
.end method


# virtual methods
.method public enable()V
    .locals 1

    .prologue
    .line 634
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView$IdleRunner;->mActive:Z

    if-eqz v0, :cond_0

    .line 637
    :goto_0
    return-void

    .line 635
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView$IdleRunner;->mActive:Z

    .line 636
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView$IdleRunner;->this$0:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 605
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView$IdleRunner;->this$0:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->access$200(Lcom/lenovo/scg/gallery3d/ui/GLRootView;)Ljava/util/ArrayDeque;

    move-result-object v3

    monitor-enter v3

    .line 606
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView$IdleRunner;->mActive:Z

    .line 607
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView$IdleRunner;->this$0:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->access$200(Lcom/lenovo/scg/gallery3d/ui/GLRootView;)Ljava/util/ArrayDeque;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v3

    .line 630
    :goto_0
    return-void

    .line 608
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView$IdleRunner;->this$0:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->access$200(Lcom/lenovo/scg/gallery3d/ui/GLRootView;)Ljava/util/ArrayDeque;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/ui/GLRoot$OnGLIdleListener;

    .line 609
    .local v1, "listener":Lcom/lenovo/scg/gallery3d/ui/GLRoot$OnGLIdleListener;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 610
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView$IdleRunner;->this$0:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->access$300(Lcom/lenovo/scg/gallery3d/ui/GLRootView;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 613
    :try_start_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView$IdleRunner;->this$0:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mCanvas:Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->access$400(Lcom/lenovo/scg/gallery3d/ui/GLRootView;)Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView$IdleRunner;->this$0:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mRenderRequested:Z
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->access$500(Lcom/lenovo/scg/gallery3d/ui/GLRootView;)Z

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/ui/GLRoot$OnGLIdleListener;->onGLIdle(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v0

    .line 615
    .local v0, "keepInQueue":Z
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView$IdleRunner;->this$0:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->access$300(Lcom/lenovo/scg/gallery3d/ui/GLRootView;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 617
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView$IdleRunner;->this$0:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->access$200(Lcom/lenovo/scg/gallery3d/ui/GLRootView;)Ljava/util/ArrayDeque;

    move-result-object v3

    monitor-enter v3

    .line 619
    if-eqz v0, :cond_1

    .line 620
    :try_start_2
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView$IdleRunner;->this$0:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->access$200(Lcom/lenovo/scg/gallery3d/ui/GLRootView;)Ljava/util/ArrayDeque;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 622
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView$IdleRunner;->this$0:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mIdleRunnerForceRun:Z
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->access$600(Lcom/lenovo/scg/gallery3d/ui/GLRootView;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView$IdleRunner;->this$0:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mRenderRequested:Z
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->access$500(Lcom/lenovo/scg/gallery3d/ui/GLRootView;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView$IdleRunner;->this$0:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->access$200(Lcom/lenovo/scg/gallery3d/ui/GLRootView;)Ljava/util/ArrayDeque;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 623
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/GLRootView$IdleRunner;->enable()V

    .line 624
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView$IdleRunner;->this$0:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mIdleRunnerForceRun:Z
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->access$600(Lcom/lenovo/scg/gallery3d/ui/GLRootView;)Z

    move-result v2

    if-ne v2, v4, :cond_3

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView$IdleRunner;->this$0:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->access$200(Lcom/lenovo/scg/gallery3d/ui/GLRootView;)Ljava/util/ArrayDeque;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    if-gt v2, v4, :cond_3

    .line 625
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView$IdleRunner;->this$0:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    const/4 v4, 0x0

    # setter for: Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mIdleRunnerForceRun:Z
    invoke-static {v2, v4}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->access$602(Lcom/lenovo/scg/gallery3d/ui/GLRootView;Z)Z

    .line 629
    :cond_3
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 609
    .end local v0    # "keepInQueue":Z
    .end local v1    # "listener":Lcom/lenovo/scg/gallery3d/ui/GLRoot$OnGLIdleListener;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 615
    .restart local v1    # "listener":Lcom/lenovo/scg/gallery3d/ui/GLRoot$OnGLIdleListener;
    :catchall_2
    move-exception v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView$IdleRunner;->this$0:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->access$300(Lcom/lenovo/scg/gallery3d/ui/GLRootView;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method
