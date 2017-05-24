.class Lcom/baidu/idl/lib/network/AsyncHttpCloudClient$1;
.super Ljava/lang/Object;
.source "AsyncHttpCloudClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/idl/lib/network/AsyncHttpCloudClient;->procResult([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/idl/lib/network/AsyncHttpCloudClient;

.field private final synthetic val$result:[B


# direct methods
.method constructor <init>(Lcom/baidu/idl/lib/network/AsyncHttpCloudClient;[B)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/baidu/idl/lib/network/AsyncHttpCloudClient$1;->this$0:Lcom/baidu/idl/lib/network/AsyncHttpCloudClient;

    iput-object p2, p0, Lcom/baidu/idl/lib/network/AsyncHttpCloudClient$1;->val$result:[B

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 83
    const-string v0, "YTL"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "procResult: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/baidu/idl/lib/network/AsyncHttpCloudClient$1;->val$result:[B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/idl/lib/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/baidu/idl/lib/network/AsyncHttpCloudClient$1;->this$0:Lcom/baidu/idl/lib/network/AsyncHttpCloudClient;

    # getter for: Lcom/baidu/idl/lib/network/AsyncHttpCloudClient;->mCallBack:Lcom/baidu/idl/lib/network/AsyncHttpCloudClient$HttpCallBack;
    invoke-static {v0}, Lcom/baidu/idl/lib/network/AsyncHttpCloudClient;->access$0(Lcom/baidu/idl/lib/network/AsyncHttpCloudClient;)Lcom/baidu/idl/lib/network/AsyncHttpCloudClient$HttpCallBack;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/idl/lib/network/AsyncHttpCloudClient$1;->val$result:[B

    iget-object v2, p0, Lcom/baidu/idl/lib/network/AsyncHttpCloudClient$1;->this$0:Lcom/baidu/idl/lib/network/AsyncHttpCloudClient;

    # getter for: Lcom/baidu/idl/lib/network/AsyncHttpCloudClient;->mTag:Ljava/lang/Object;
    invoke-static {v2}, Lcom/baidu/idl/lib/network/AsyncHttpCloudClient;->access$1(Lcom/baidu/idl/lib/network/AsyncHttpCloudClient;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/baidu/idl/lib/network/AsyncHttpCloudClient$HttpCallBack;->call([BLjava/lang/Object;)V

    .line 85
    iget-object v0, p0, Lcom/baidu/idl/lib/network/AsyncHttpCloudClient$1;->this$0:Lcom/baidu/idl/lib/network/AsyncHttpCloudClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/idl/lib/network/AsyncHttpCloudClient;->access$2(Lcom/baidu/idl/lib/network/AsyncHttpCloudClient;Lcom/baidu/idl/lib/network/AsyncHttpCloudClient$HttpCallBack;)V

    .line 86
    return-void
.end method
