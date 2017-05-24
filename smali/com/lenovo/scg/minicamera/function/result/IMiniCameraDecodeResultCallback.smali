.class public interface abstract Lcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultCallback;
.super Ljava/lang/Object;
.source "IMiniCameraDecodeResultCallback.java"


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
.method public abstract decodeFailed(Ljava/lang/Exception;)V
.end method

.method public abstract decodeStart()V
.end method

.method public abstract decodeSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
