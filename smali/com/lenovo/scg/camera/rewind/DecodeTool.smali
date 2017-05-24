.class public Lcom/lenovo/scg/camera/rewind/DecodeTool;
.super Ljava/lang/Object;
.source "DecodeTool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/rewind/DecodeTool$1;,
        Lcom/lenovo/scg/camera/rewind/DecodeTool$OnDecodeListener;,
        Lcom/lenovo/scg/camera/rewind/DecodeTool$DecodeTask;
    }
.end annotation


# instance fields
.field private final MAX_THREAD_COUNT:I

.field private final TAG:Ljava/lang/String;

.field private mDstFormat:I

.field private mDstHeight:I

.field private mDstWidth:I

.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mImgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mListener:Lcom/lenovo/scg/camera/rewind/DecodeTool$OnDecodeListener;

.field private mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

.field private mbExit:Z

.field private mbNeedRotate:Z


# direct methods
.method public constructor <init>(IIIZ)V
    .locals 5
    .param p1, "dstWidth"    # I
    .param p2, "dstHeight"    # I
    .param p3, "format"    # I
    .param p4, "bNeedRotate"    # Z

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "DecodeTool"

    iput-object v0, p0, Lcom/lenovo/scg/camera/rewind/DecodeTool;->TAG:Ljava/lang/String;

    .line 17
    iput-object v1, p0, Lcom/lenovo/scg/camera/rewind/DecodeTool;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 18
    iput-object v1, p0, Lcom/lenovo/scg/camera/rewind/DecodeTool;->mImgList:Ljava/util/ArrayList;

    .line 19
    iput-object v1, p0, Lcom/lenovo/scg/camera/rewind/DecodeTool;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    .line 20
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/rewind/DecodeTool;->mbExit:Z

    .line 21
    iput v2, p0, Lcom/lenovo/scg/camera/rewind/DecodeTool;->mDstWidth:I

    .line 22
    iput v2, p0, Lcom/lenovo/scg/camera/rewind/DecodeTool;->mDstHeight:I

    .line 23
    iput v2, p0, Lcom/lenovo/scg/camera/rewind/DecodeTool;->mDstFormat:I

    .line 24
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/rewind/DecodeTool;->mbNeedRotate:Z

    .line 26
    iput-object v1, p0, Lcom/lenovo/scg/camera/rewind/DecodeTool;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 27
    iput-object v1, p0, Lcom/lenovo/scg/camera/rewind/DecodeTool;->mListener:Lcom/lenovo/scg/camera/rewind/DecodeTool$OnDecodeListener;

    .line 29
    iput v4, p0, Lcom/lenovo/scg/camera/rewind/DecodeTool;->MAX_THREAD_COUNT:I

    .line 32
    invoke-static {v4}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/rewind/DecodeTool;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/rewind/DecodeTool;->mImgList:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/rewind/DecodeTool;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 36
    iput p1, p0, Lcom/lenovo/scg/camera/rewind/DecodeTool;->mDstWidth:I

    .line 37
    iput p2, p0, Lcom/lenovo/scg/camera/rewind/DecodeTool;->mDstHeight:I

    .line 38
    iput p3, p0, Lcom/lenovo/scg/camera/rewind/DecodeTool;->mDstFormat:I

    .line 39
    iput-boolean p4, p0, Lcom/lenovo/scg/camera/rewind/DecodeTool;->mbNeedRotate:Z

    .line 40
    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/rewind/DecodeTool;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/rewind/DecodeTool;

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/rewind/DecodeTool;->mbExit:Z

    return v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/rewind/DecodeTool;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/rewind/DecodeTool;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/DecodeTool;->mImgList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/camera/rewind/DecodeTool;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/rewind/DecodeTool;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/DecodeTool;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/camera/rewind/DecodeTool;)Lcom/lenovo/scg/camera/ContinuousShotTool;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/rewind/DecodeTool;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/DecodeTool;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/camera/rewind/DecodeTool;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/rewind/DecodeTool;

    .prologue
    .line 14
    iget v0, p0, Lcom/lenovo/scg/camera/rewind/DecodeTool;->mDstWidth:I

    return v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/camera/rewind/DecodeTool;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/rewind/DecodeTool;

    .prologue
    .line 14
    iget v0, p0, Lcom/lenovo/scg/camera/rewind/DecodeTool;->mDstHeight:I

    return v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/camera/rewind/DecodeTool;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/rewind/DecodeTool;

    .prologue
    .line 14
    iget v0, p0, Lcom/lenovo/scg/camera/rewind/DecodeTool;->mDstFormat:I

    return v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/camera/rewind/DecodeTool;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/rewind/DecodeTool;

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/rewind/DecodeTool;->mbNeedRotate:Z

    return v0
.end method

.method static synthetic access$900(Lcom/lenovo/scg/camera/rewind/DecodeTool;)Lcom/lenovo/scg/camera/rewind/DecodeTool$OnDecodeListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/rewind/DecodeTool;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/DecodeTool;->mListener:Lcom/lenovo/scg/camera/rewind/DecodeTool$OnDecodeListener;

    return-object v0
.end method


# virtual methods
.method public addJpeg([B)V
    .locals 3
    .param p1, "jpeg"    # [B

    .prologue
    .line 74
    const-string v0, "DecodeTool"

    const-string v1, "addJpeg"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/DecodeTool;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 76
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/DecodeTool;->mImgList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/DecodeTool;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 79
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/DecodeTool;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/lenovo/scg/camera/rewind/DecodeTool$DecodeTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/lenovo/scg/camera/rewind/DecodeTool$DecodeTask;-><init>(Lcom/lenovo/scg/camera/rewind/DecodeTool;Lcom/lenovo/scg/camera/rewind/DecodeTool$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 80
    return-void
.end method

.method public exit()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 51
    const-string v1, "DecodeTool"

    const-string v2, "exit++"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iput-object v5, p0, Lcom/lenovo/scg/camera/rewind/DecodeTool;->mListener:Lcom/lenovo/scg/camera/rewind/DecodeTool$OnDecodeListener;

    .line 53
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/scg/camera/rewind/DecodeTool;->mbExit:Z

    .line 54
    iget-object v1, p0, Lcom/lenovo/scg/camera/rewind/DecodeTool;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 57
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/rewind/DecodeTool;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 58
    const-string v1, "DecodeTool"

    const-string v2, "awaitTermination timeout!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v1, p0, Lcom/lenovo/scg/camera/rewind/DecodeTool;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :cond_0
    :goto_0
    iput-object v5, p0, Lcom/lenovo/scg/camera/rewind/DecodeTool;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    .line 66
    iput-object v5, p0, Lcom/lenovo/scg/camera/rewind/DecodeTool;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 67
    iput-object v5, p0, Lcom/lenovo/scg/camera/rewind/DecodeTool;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 68
    iget-object v1, p0, Lcom/lenovo/scg/camera/rewind/DecodeTool;->mImgList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 69
    iput-object v5, p0, Lcom/lenovo/scg/camera/rewind/DecodeTool;->mImgList:Ljava/util/ArrayList;

    .line 70
    const-string v1, "DecodeTool"

    const-string v2, "exit--"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public setListener(Lcom/lenovo/scg/camera/rewind/DecodeTool$OnDecodeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/camera/rewind/DecodeTool$OnDecodeListener;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/lenovo/scg/camera/rewind/DecodeTool;->mListener:Lcom/lenovo/scg/camera/rewind/DecodeTool$OnDecodeListener;

    .line 48
    return-void
.end method

.method public setShotTool(Lcom/lenovo/scg/camera/ContinuousShotTool;)V
    .locals 0
    .param p1, "tool"    # Lcom/lenovo/scg/camera/ContinuousShotTool;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/lenovo/scg/camera/rewind/DecodeTool;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    .line 44
    return-void
.end method
