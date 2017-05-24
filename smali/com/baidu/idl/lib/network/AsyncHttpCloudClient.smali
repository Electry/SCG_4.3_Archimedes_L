.class public Lcom/baidu/idl/lib/network/AsyncHttpCloudClient;
.super Ljava/lang/Thread;
.source "AsyncHttpCloudClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/idl/lib/network/AsyncHttpCloudClient$HttpCallBack;
    }
.end annotation


# instance fields
.field private mCallBack:Lcom/baidu/idl/lib/network/AsyncHttpCloudClient$HttpCallBack;

.field protected mClient:Lcom/baidu/idl/lib/network/HttpCloudClient;

.field private mHandler:Landroid/os/Handler;

.field protected mReq:Lorg/apache/http/client/methods/HttpUriRequest;

.field private mTag:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/baidu/idl/lib/network/AsyncHttpCloudClient$HttpCallBack;Ljava/lang/Object;Lorg/apache/http/client/methods/HttpUriRequest;)V
    .locals 2
    .param p1, "callBack"    # Lcom/baidu/idl/lib/network/AsyncHttpCloudClient$HttpCallBack;
    .param p2, "tag"    # Ljava/lang/Object;
    .param p3, "req"    # Lorg/apache/http/client/methods/HttpUriRequest;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/baidu/idl/lib/network/AsyncHttpCloudClient;->mCallBack:Lcom/baidu/idl/lib/network/AsyncHttpCloudClient$HttpCallBack;

    .line 24
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 25
    .local v0, "looper":Landroid/os/Looper;
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/baidu/idl/lib/network/AsyncHttpCloudClient;->mHandler:Landroid/os/Handler;

    .line 26
    iput-object p3, p0, Lcom/baidu/idl/lib/network/AsyncHttpCloudClient;->mReq:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 27
    iput-object p2, p0, Lcom/baidu/idl/lib/network/AsyncHttpCloudClient;->mTag:Ljava/lang/Object;

    .line 28
    return-void
.end method

.method static synthetic access$0(Lcom/baidu/idl/lib/network/AsyncHttpCloudClient;)Lcom/baidu/idl/lib/network/AsyncHttpCloudClient$HttpCallBack;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/baidu/idl/lib/network/AsyncHttpCloudClient;->mCallBack:Lcom/baidu/idl/lib/network/AsyncHttpCloudClient$HttpCallBack;

    return-object v0
.end method

.method static synthetic access$1(Lcom/baidu/idl/lib/network/AsyncHttpCloudClient;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/baidu/idl/lib/network/AsyncHttpCloudClient;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2(Lcom/baidu/idl/lib/network/AsyncHttpCloudClient;Lcom/baidu/idl/lib/network/AsyncHttpCloudClient$HttpCallBack;)V
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/baidu/idl/lib/network/AsyncHttpCloudClient;->mCallBack:Lcom/baidu/idl/lib/network/AsyncHttpCloudClient$HttpCallBack;

    return-void
.end method


# virtual methods
.method protected getRes()[B
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 56
    :try_start_0
    new-instance v2, Lcom/baidu/idl/lib/network/HttpCloudClient;

    invoke-direct {v2}, Lcom/baidu/idl/lib/network/HttpCloudClient;-><init>()V

    iput-object v2, p0, Lcom/baidu/idl/lib/network/AsyncHttpCloudClient;->mClient:Lcom/baidu/idl/lib/network/HttpCloudClient;

    .line 57
    iget-object v2, p0, Lcom/baidu/idl/lib/network/AsyncHttpCloudClient;->mClient:Lcom/baidu/idl/lib/network/HttpCloudClient;

    iget-object v3, p0, Lcom/baidu/idl/lib/network/AsyncHttpCloudClient;->mReq:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-virtual {v2, v3}, Lcom/baidu/idl/lib/network/HttpCloudClient;->excuteHttpRequest(Lorg/apache/http/client/methods/HttpUriRequest;)[B
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 72
    :goto_0
    return-object v1

    .line 58
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_0

    .line 62
    .end local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v0

    .line 64
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 66
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected procResult([B)V
    .locals 2
    .param p1, "result"    # [B

    .prologue
    .line 77
    iget-object v0, p0, Lcom/baidu/idl/lib/network/AsyncHttpCloudClient;->mCallBack:Lcom/baidu/idl/lib/network/AsyncHttpCloudClient$HttpCallBack;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/baidu/idl/lib/network/AsyncHttpCloudClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/idl/lib/network/AsyncHttpCloudClient$1;

    invoke-direct {v1, p0, p1}, Lcom/baidu/idl/lib/network/AsyncHttpCloudClient$1;-><init>(Lcom/baidu/idl/lib/network/AsyncHttpCloudClient;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 90
    :cond_0
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 45
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 46
    invoke-virtual {p0}, Lcom/baidu/idl/lib/network/AsyncHttpCloudClient;->getRes()[B

    move-result-object v0

    .line 47
    .local v0, "resp":[B
    invoke-virtual {p0, v0}, Lcom/baidu/idl/lib/network/AsyncHttpCloudClient;->procResult([B)V

    .line 49
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/idl/lib/network/AsyncHttpCloudClient;->mHandler:Landroid/os/Handler;

    .line 50
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/baidu/idl/lib/network/AsyncHttpCloudClient;->mClient:Lcom/baidu/idl/lib/network/HttpCloudClient;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/baidu/idl/lib/network/AsyncHttpCloudClient;->mClient:Lcom/baidu/idl/lib/network/HttpCloudClient;

    invoke-virtual {v0}, Lcom/baidu/idl/lib/network/HttpCloudClient;->cancel()V

    .line 40
    :cond_0
    return-void
.end method
