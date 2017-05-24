.class abstract Lcn/jingling/lib/camera/WonderAsyncTask$WorkerRunnable;
.super Ljava/lang/Object;
.source "WonderAsyncTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/jingling/lib/camera/WonderAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "WorkerRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field mParams:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TParams;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 520
    .local p0, "this":Lcn/jingling/lib/camera/WonderAsyncTask$WorkerRunnable;, "Lcn/jingling/lib/camera/WonderAsyncTask<TParams;TProgress;TResult;>.WorkerRunnable<TParams;TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/jingling/lib/camera/WonderAsyncTask$WorkerRunnable;)V
    .locals 0

    .prologue
    .line 520
    invoke-direct {p0}, Lcn/jingling/lib/camera/WonderAsyncTask$WorkerRunnable;-><init>()V

    return-void
.end method
