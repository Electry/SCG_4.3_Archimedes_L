.class public Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskScheduler;
.super Ljava/lang/Object;
.source "TaskScheduler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "wangwf1_TaskScheduler"

.field private static mInstance:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskScheduler;


# instance fields
.field private mReadThreadPool:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool;

.field private mWriteThreadPool:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskScheduler;->mInstance:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskScheduler;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool;

    sget-object v1, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool$Type;->READ_FILE:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool$Type;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool;-><init>(Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool$Type;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskScheduler;->mReadThreadPool:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool;

    .line 19
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool;

    sget-object v1, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool$Type;->WRITE_FILE:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool$Type;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool;-><init>(Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool$Type;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskScheduler;->mWriteThreadPool:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool;

    .line 20
    return-void
.end method

.method public static declared-synchronized destory()V
    .locals 2

    .prologue
    .line 55
    const-class v1, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskScheduler;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskScheduler;->mInstance:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskScheduler;

    if-eqz v0, :cond_0

    .line 56
    sget-object v0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskScheduler;->mInstance:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskScheduler;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskScheduler;->mReadThreadPool:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool;->shutdown()V

    .line 57
    sget-object v0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskScheduler;->mInstance:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskScheduler;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskScheduler;->mWriteThreadPool:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool;->shutdown()V

    .line 58
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskScheduler;->mInstance:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskScheduler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :cond_0
    monitor-exit v1

    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance()Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskScheduler;
    .locals 2

    .prologue
    .line 23
    const-class v1, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskScheduler;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskScheduler;->mInstance:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskScheduler;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskScheduler;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskScheduler;-><init>()V

    sput-object v0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskScheduler;->mInstance:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskScheduler;

    .line 26
    :cond_0
    sget-object v0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskScheduler;->mInstance:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskScheduler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskScheduler;->mReadThreadPool:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool;->clear()V

    .line 51
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskScheduler;->mWriteThreadPool:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool;->clear()V

    .line 52
    return-void
.end method

.method public submitToRead(Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/Task;)Z
    .locals 1
    .param p1, "task"    # Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/Task;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskScheduler;->mReadThreadPool:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool;->submit(Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/Task;)V

    .line 36
    const/4 v0, 0x1

    return v0
.end method

.method public submitToRead(Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/Task;Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskListener;)Z
    .locals 1
    .param p1, "task"    # Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/Task;
    .param p2, "listener"    # Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskListener;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskScheduler;->mReadThreadPool:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool;->submit(Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/Task;Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskListener;)V

    .line 46
    const/4 v0, 0x1

    return v0
.end method

.method public submitToWrite(Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/Task;)Z
    .locals 1
    .param p1, "task"    # Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/Task;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskScheduler;->mWriteThreadPool:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool;->submit(Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/Task;)V

    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public submitToWrite(Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/Task;Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskListener;)Z
    .locals 1
    .param p1, "task"    # Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/Task;
    .param p2, "listener"    # Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskListener;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskScheduler;->mWriteThreadPool:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool;->submit(Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/Task;Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskListener;)V

    .line 41
    const/4 v0, 0x1

    return v0
.end method
