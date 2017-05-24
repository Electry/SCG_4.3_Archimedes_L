.class public final Lcom/lenovo/scg/minicamera/function/decode/MiniCameraAsyncTaskExecManager;
.super Lcom/lenovo/scg/minicamera/function/decode/MiniCameraPlatformSupportManager;
.source "MiniCameraAsyncTaskExecManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lenovo/scg/minicamera/function/decode/MiniCameraPlatformSupportManager",
        "<",
        "Lcom/lenovo/scg/minicamera/function/decode/IMiniCameraAsyncTaskExecInterface;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    const-class v0, Lcom/lenovo/scg/minicamera/function/decode/IMiniCameraAsyncTaskExecInterface;

    new-instance v1, Lcom/lenovo/scg/minicamera/function/decode/MiniCameraDefaultAsyncTaskExecInterface;

    invoke-direct {v1}, Lcom/lenovo/scg/minicamera/function/decode/MiniCameraDefaultAsyncTaskExecInterface;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/minicamera/function/decode/MiniCameraPlatformSupportManager;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 26
    return-void
.end method
