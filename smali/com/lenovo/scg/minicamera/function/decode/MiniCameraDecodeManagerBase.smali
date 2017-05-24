.class public Lcom/lenovo/scg/minicamera/function/decode/MiniCameraDecodeManagerBase;
.super Ljava/lang/Object;
.source "MiniCameraDecodeManagerBase.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiniCameraDecodeManagerBase"

.field private static taskExec:Lcom/lenovo/scg/minicamera/function/decode/IMiniCameraAsyncTaskExecInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method private declared-synchronized getAsyncTaskExecInterface()Lcom/lenovo/scg/minicamera/function/decode/IMiniCameraAsyncTaskExecInterface;
    .locals 1

    .prologue
    .line 26
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/lenovo/scg/minicamera/function/decode/MiniCameraDecodeManagerBase;->taskExec:Lcom/lenovo/scg/minicamera/function/decode/IMiniCameraAsyncTaskExecInterface;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/lenovo/scg/minicamera/function/decode/MiniCameraAsyncTaskExecManager;

    invoke-direct {v0}, Lcom/lenovo/scg/minicamera/function/decode/MiniCameraAsyncTaskExecManager;-><init>()V

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/function/decode/MiniCameraAsyncTaskExecManager;->build()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/minicamera/function/decode/IMiniCameraAsyncTaskExecInterface;

    sput-object v0, Lcom/lenovo/scg/minicamera/function/decode/MiniCameraDecodeManagerBase;->taskExec:Lcom/lenovo/scg/minicamera/function/decode/IMiniCameraAsyncTaskExecInterface;

    .line 29
    :cond_0
    sget-object v0, Lcom/lenovo/scg/minicamera/function/decode/MiniCameraDecodeManagerBase;->taskExec:Lcom/lenovo/scg/minicamera/function/decode/IMiniCameraAsyncTaskExecInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected decode(Lcom/lenovo/scg/minicamera/function/decode/MiniCameraAbstractDecodeTask;Lcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/scg/minicamera/function/decode/MiniCameraAbstractDecodeTask",
            "<*>;",
            "Lcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultCallback",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "decodeTask":Lcom/lenovo/scg/minicamera/function/decode/MiniCameraAbstractDecodeTask;, "Lcom/lenovo/scg/minicamera/function/decode/MiniCameraAbstractDecodeTask<*>;"
    .local p2, "barcodeCallback":Lcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultCallback;, "Lcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultCallback<*>;"
    if-eqz p2, :cond_0

    .line 35
    invoke-interface {p2}, Lcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultCallback;->decodeStart()V

    .line 37
    :cond_0
    if-eqz p1, :cond_1

    .line 38
    invoke-virtual {p1, p2}, Lcom/lenovo/scg/minicamera/function/decode/MiniCameraAbstractDecodeTask;->setBarcodeCallback(Lcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultCallback;)V

    .line 40
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/function/decode/MiniCameraDecodeManagerBase;->getAsyncTaskExecInterface()Lcom/lenovo/scg/minicamera/function/decode/IMiniCameraAsyncTaskExecInterface;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-interface {v0, p1, v1}, Lcom/lenovo/scg/minicamera/function/decode/IMiniCameraAsyncTaskExecInterface;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "DefaultDecodeTask is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultCallback;->decodeFailed(Ljava/lang/Exception;)V

    goto :goto_0
.end method
