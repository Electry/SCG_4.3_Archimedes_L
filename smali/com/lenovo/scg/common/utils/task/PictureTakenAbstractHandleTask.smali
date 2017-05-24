.class public abstract Lcom/lenovo/scg/common/utils/task/PictureTakenAbstractHandleTask;
.super Landroid/os/AsyncTask;
.source "PictureTakenAbstractHandleTask.java"


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
.field private static final TAG:Ljava/lang/String; = "PictureTakenAbstractHandleTask"


# instance fields
.field private mHandleCallback:Lcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    .local p0, "this":Lcom/lenovo/scg/common/utils/task/PictureTakenAbstractHandleTask;, "Lcom/lenovo/scg/common/utils/task/PictureTakenAbstractHandleTask<TT;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 15
    .local p0, "this":Lcom/lenovo/scg/common/utils/task/PictureTakenAbstractHandleTask;, "Lcom/lenovo/scg/common/utils/task/PictureTakenAbstractHandleTask<TT;>;"
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/common/utils/task/PictureTakenAbstractHandleTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .local p0, "this":Lcom/lenovo/scg/common/utils/task/PictureTakenAbstractHandleTask;, "Lcom/lenovo/scg/common/utils/task/PictureTakenAbstractHandleTask<TT;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 59
    const/4 v1, 0x0

    .line 61
    .local v1, "result":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/scg/common/utils/task/PictureTakenAbstractHandleTask;->handle()Ljava/lang/Object;

    move-result-object v1

    .line 62
    if-nez v1, :cond_0

    .line 63
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Exception;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "handle result is null!!"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/common/utils/task/PictureTakenAbstractHandleTask;->publishProgress([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v1    # "result":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v1

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    new-array v2, v7, [Ljava/lang/Exception;

    aput-object v0, v2, v6

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/common/utils/task/PictureTakenAbstractHandleTask;->publishProgress([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getHandleCallback()Lcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lcom/lenovo/scg/common/utils/task/PictureTakenAbstractHandleTask;, "Lcom/lenovo/scg/common/utils/task/PictureTakenAbstractHandleTask<TT;>;"
    iget-object v0, p0, Lcom/lenovo/scg/common/utils/task/PictureTakenAbstractHandleTask;->mHandleCallback:Lcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback;

    return-object v0
.end method

.method public abstract handle()Ljava/lang/Object;
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 79
    .local p0, "this":Lcom/lenovo/scg/common/utils/task/PictureTakenAbstractHandleTask;, "Lcom/lenovo/scg/common/utils/task/PictureTakenAbstractHandleTask<TT;>;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 81
    iget-object v1, p0, Lcom/lenovo/scg/common/utils/task/PictureTakenAbstractHandleTask;->mHandleCallback:Lcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback;

    if-nez v1, :cond_0

    .line 82
    const-string v1, "PictureTakenAbstractHandleTask"

    const-string/jumbo v2, "onPostExecute, mHandleCallback = null!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :goto_0
    return-void

    .line 86
    :cond_0
    if-nez p1, :cond_1

    .line 87
    const-string v1, "PictureTakenAbstractHandleTask"

    const-string/jumbo v2, "onPostExecute, result = null!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/common/utils/task/PictureTakenAbstractHandleTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 92
    const-string v1, "PictureTakenAbstractHandleTask"

    const-string/jumbo v2, "onPostExecute, isCancelled!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 96
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/common/utils/task/PictureTakenAbstractHandleTask;->mHandleCallback:Lcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback;

    invoke-interface {v1, p1}, Lcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback;->handleSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PictureTakenAbstractHandleTask<T> onPostExecute error: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Exception;)V
    .locals 0
    .param p1, "values"    # [Ljava/lang/Exception;

    .prologue
    .line 74
    .local p0, "this":Lcom/lenovo/scg/common/utils/task/PictureTakenAbstractHandleTask;, "Lcom/lenovo/scg/common/utils/task/PictureTakenAbstractHandleTask<TT;>;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 75
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 15
    .local p0, "this":Lcom/lenovo/scg/common/utils/task/PictureTakenAbstractHandleTask;, "Lcom/lenovo/scg/common/utils/task/PictureTakenAbstractHandleTask<TT;>;"
    check-cast p1, [Ljava/lang/Exception;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/common/utils/task/PictureTakenAbstractHandleTask;->onProgressUpdate([Ljava/lang/Exception;)V

    return-void
.end method

.method public setHandleCallback(Lcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lcom/lenovo/scg/common/utils/task/PictureTakenAbstractHandleTask;, "Lcom/lenovo/scg/common/utils/task/PictureTakenAbstractHandleTask<TT;>;"
    .local p1, "callback":Lcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback;, "Lcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback<*>;"
    iput-object p1, p0, Lcom/lenovo/scg/common/utils/task/PictureTakenAbstractHandleTask;->mHandleCallback:Lcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback;

    .line 42
    return-void
.end method
