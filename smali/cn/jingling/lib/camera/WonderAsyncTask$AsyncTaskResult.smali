.class Lcn/jingling/lib/camera/WonderAsyncTask$AsyncTaskResult;
.super Ljava/lang/Object;
.source "WonderAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/jingling/lib/camera/WonderAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncTaskResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field

.field final mTask:Lcn/jingling/lib/camera/WonderAsyncTask;


# direct methods
.method varargs constructor <init>(Lcn/jingling/lib/camera/WonderAsyncTask;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "task"    # Lcn/jingling/lib/camera/WonderAsyncTask;
    .param p2, "data"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/jingling/lib/camera/WonderAsyncTask;",
            "[TData;)V"
        }
    .end annotation

    .prologue
    .line 529
    .local p0, "this":Lcn/jingling/lib/camera/WonderAsyncTask$AsyncTaskResult;, "Lcn/jingling/lib/camera/WonderAsyncTask<TParams;TProgress;TResult;>.AsyncTaskResult<TData;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 530
    iput-object p1, p0, Lcn/jingling/lib/camera/WonderAsyncTask$AsyncTaskResult;->mTask:Lcn/jingling/lib/camera/WonderAsyncTask;

    .line 531
    iput-object p2, p0, Lcn/jingling/lib/camera/WonderAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    .line 532
    return-void
.end method
