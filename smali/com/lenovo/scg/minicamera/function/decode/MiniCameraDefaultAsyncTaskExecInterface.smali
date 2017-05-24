.class public final Lcom/lenovo/scg/minicamera/function/decode/MiniCameraDefaultAsyncTaskExecInterface;
.super Ljava/lang/Object;
.source "MiniCameraDefaultAsyncTaskExecInterface.java"

# interfaces
.implements Lcom/lenovo/scg/minicamera/function/decode/IMiniCameraAsyncTaskExecInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/AsyncTask",
            "<TT;**>;[TT;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<TT;**>;"
    .local p2, "args":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 31
    return-void
.end method
