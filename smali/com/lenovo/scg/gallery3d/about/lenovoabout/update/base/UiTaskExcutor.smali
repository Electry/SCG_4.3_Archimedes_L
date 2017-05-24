.class public Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/UiTaskExcutor;
.super Ljava/lang/Object;
.source "UiTaskExcutor.java"


# instance fields
.field mMainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/UiTaskExcutor;->mMainHandler:Landroid/os/Handler;

    .line 12
    return-void
.end method


# virtual methods
.method public excute(Ljava/lang/Runnable;J)V
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "delay"    # J

    .prologue
    .line 19
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/UiTaskExcutor;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 20
    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/UiTaskExcutor;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    return-void
.end method
