.class Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool$TaskProxy;
.super Ljava/lang/Object;
.source "TaskThreadPool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskProxy"
.end annotation


# instance fields
.field private mListener:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskListener;

.field private mTask:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/Task;

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool;Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/Task;Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskListener;)V
    .locals 0
    .param p2, "task"    # Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/Task;
    .param p3, "listener"    # Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskListener;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool$TaskProxy;->this$0:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool$TaskProxy;->mTask:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/Task;

    .line 99
    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool$TaskProxy;->mListener:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskListener;

    .line 100
    return-void
.end method


# virtual methods
.method public get()Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/Task;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool$TaskProxy;->mTask:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/Task;

    return-object v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 108
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool$TaskProxy;->mTask:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/Task;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/Task;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool$TaskProxy;->mListener:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool$TaskProxy;->mListener:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskListener;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool$TaskProxy;->mTask:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/Task;

    invoke-interface {v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskListener;->onDone(Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/Task;)V

    .line 114
    :cond_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "ex":Ljava/lang/Throwable;
    const-string/jumbo v1, "wangwf1_TaskThreadPool"

    const-string v2, "Exception in running a job"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
