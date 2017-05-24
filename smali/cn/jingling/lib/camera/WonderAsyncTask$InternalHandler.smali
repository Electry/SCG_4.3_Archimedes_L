.class Lcn/jingling/lib/camera/WonderAsyncTask$InternalHandler;
.super Landroid/os/Handler;
.source "WonderAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/jingling/lib/camera/WonderAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 503
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/jingling/lib/camera/WonderAsyncTask$InternalHandler;)V
    .locals 0

    .prologue
    .line 503
    invoke-direct {p0}, Lcn/jingling/lib/camera/WonderAsyncTask$InternalHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 508
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcn/jingling/lib/camera/WonderAsyncTask$AsyncTaskResult;

    .line 509
    .local v0, "result":Lcn/jingling/lib/camera/WonderAsyncTask$AsyncTaskResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 517
    :goto_0
    return-void

    .line 511
    :pswitch_0
    iget-object v1, v0, Lcn/jingling/lib/camera/WonderAsyncTask$AsyncTaskResult;->mTask:Lcn/jingling/lib/camera/WonderAsyncTask;

    iget-object v2, v0, Lcn/jingling/lib/camera/WonderAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    # invokes: Lcn/jingling/lib/camera/WonderAsyncTask;->finish(Ljava/lang/Object;)V
    invoke-static {v1, v2}, Lcn/jingling/lib/camera/WonderAsyncTask;->access$0(Lcn/jingling/lib/camera/WonderAsyncTask;Ljava/lang/Object;)V

    goto :goto_0

    .line 514
    :pswitch_1
    iget-object v1, v0, Lcn/jingling/lib/camera/WonderAsyncTask$AsyncTaskResult;->mTask:Lcn/jingling/lib/camera/WonderAsyncTask;

    iget-object v2, v0, Lcn/jingling/lib/camera/WonderAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcn/jingling/lib/camera/WonderAsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    goto :goto_0

    .line 509
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
