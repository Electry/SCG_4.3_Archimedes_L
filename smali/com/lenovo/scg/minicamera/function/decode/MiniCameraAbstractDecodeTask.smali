.class public abstract Lcom/lenovo/scg/minicamera/function/decode/MiniCameraAbstractDecodeTask;
.super Landroid/os/AsyncTask;
.source "MiniCameraAbstractDecodeTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Exception;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MiniCameraAbstractDecodeTask"


# instance fields
.field private mBarcodeCallback:Lcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultCallback",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    .local p0, "this":Lcom/lenovo/scg/minicamera/function/decode/MiniCameraAbstractDecodeTask;, "Lcom/lenovo/scg/minicamera/function/decode/MiniCameraAbstractDecodeTask<TT;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract decode()Ljava/lang/Object;
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 16
    .local p0, "this":Lcom/lenovo/scg/minicamera/function/decode/MiniCameraAbstractDecodeTask;, "Lcom/lenovo/scg/minicamera/function/decode/MiniCameraAbstractDecodeTask<TT;>;"
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/minicamera/function/decode/MiniCameraAbstractDecodeTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .local p0, "this":Lcom/lenovo/scg/minicamera/function/decode/MiniCameraAbstractDecodeTask;, "Lcom/lenovo/scg/minicamera/function/decode/MiniCameraAbstractDecodeTask<TT;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 35
    const/4 v1, 0x0

    .line 37
    .local v1, "result":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/function/decode/MiniCameraAbstractDecodeTask;->decode()Ljava/lang/Object;

    move-result-object v1

    .line 38
    if-nez v1, :cond_0

    .line 40
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Exception;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "decode result is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/minicamera/function/decode/MiniCameraAbstractDecodeTask;->publishProgress([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .end local v1    # "result":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v1

    .line 43
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/Exception;
    new-array v2, v7, [Ljava/lang/Exception;

    aput-object v0, v2, v6

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/minicamera/function/decode/MiniCameraAbstractDecodeTask;->publishProgress([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getBarcodeCallback()Lcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultCallback",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "this":Lcom/lenovo/scg/minicamera/function/decode/MiniCameraAbstractDecodeTask;, "Lcom/lenovo/scg/minicamera/function/decode/MiniCameraAbstractDecodeTask<TT;>;"
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/function/decode/MiniCameraAbstractDecodeTask;->mBarcodeCallback:Lcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultCallback;

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 69
    .local p0, "this":Lcom/lenovo/scg/minicamera/function/decode/MiniCameraAbstractDecodeTask;, "Lcom/lenovo/scg/minicamera/function/decode/MiniCameraAbstractDecodeTask<TT;>;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/function/decode/MiniCameraAbstractDecodeTask;->mBarcodeCallback:Lcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultCallback;

    if-nez v0, :cond_0

    .line 71
    const-string v0, "MiniCameraAbstractDecodeTask"

    const-string/jumbo v1, "onPostExecute, mBarcodeCallback = null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :goto_0
    return-void

    .line 75
    :cond_0
    if-nez p1, :cond_1

    .line 76
    const-string v0, "MiniCameraAbstractDecodeTask"

    const-string/jumbo v1, "onPostExecute, result = null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/function/decode/MiniCameraAbstractDecodeTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    const-string v0, "MiniCameraAbstractDecodeTask"

    const-string/jumbo v1, "onPostExecute, isCancelled!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 85
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/function/decode/MiniCameraAbstractDecodeTask;->mBarcodeCallback:Lcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultCallback;

    invoke-interface {v0, p1}, Lcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultCallback;->decodeSuccess(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Exception;)V
    .locals 2
    .param p1, "values"    # [Ljava/lang/Exception;

    .prologue
    .line 52
    .local p0, "this":Lcom/lenovo/scg/minicamera/function/decode/MiniCameraAbstractDecodeTask;, "Lcom/lenovo/scg/minicamera/function/decode/MiniCameraAbstractDecodeTask<TT;>;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 54
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/function/decode/MiniCameraAbstractDecodeTask;->mBarcodeCallback:Lcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultCallback;

    if-eqz v1, :cond_1

    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, "exception":Ljava/lang/Exception;
    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    .line 57
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/function/decode/MiniCameraAbstractDecodeTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 64
    .end local v0    # "exception":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void

    .line 62
    .restart local v0    # "exception":Ljava/lang/Exception;
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/function/decode/MiniCameraAbstractDecodeTask;->mBarcodeCallback:Lcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultCallback;

    invoke-interface {v1, v0}, Lcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultCallback;->decodeFailed(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 16
    .local p0, "this":Lcom/lenovo/scg/minicamera/function/decode/MiniCameraAbstractDecodeTask;, "Lcom/lenovo/scg/minicamera/function/decode/MiniCameraAbstractDecodeTask<TT;>;"
    check-cast p1, [Ljava/lang/Exception;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/minicamera/function/decode/MiniCameraAbstractDecodeTask;->onProgressUpdate([Ljava/lang/Exception;)V

    return-void
.end method

.method public setBarcodeCallback(Lcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultCallback",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lcom/lenovo/scg/minicamera/function/decode/MiniCameraAbstractDecodeTask;, "Lcom/lenovo/scg/minicamera/function/decode/MiniCameraAbstractDecodeTask<TT;>;"
    .local p1, "barcodeCallback":Lcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultCallback;, "Lcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultCallback<*>;"
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/function/decode/MiniCameraAbstractDecodeTask;->mBarcodeCallback:Lcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultCallback;

    .line 31
    return-void
.end method
