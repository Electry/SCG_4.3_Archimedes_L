.class public interface abstract Lcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback;
.super Ljava/lang/Object;
.source "IPictureTakenHandleCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract handleFailed(Ljava/lang/Exception;)V
.end method

.method public abstract handleStart()V
.end method

.method public abstract handleSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
