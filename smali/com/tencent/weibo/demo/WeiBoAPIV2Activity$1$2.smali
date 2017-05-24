.class Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1$2;
.super Ljava/lang/Thread;
.source "WeiBoAPIV2Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1;


# direct methods
.method constructor <init>(Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1$2;->this$1:Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1;

    .line 82
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1$2;)Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1$2;->this$1:Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 87
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1$2;->this$1:Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1;

    iget-object v2, p0, Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1$2;->this$1:Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1;

    iget-object v2, v2, Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1;->tAPI:Lcom/tencent/weibo/api/TAPI;

    iget-object v3, p0, Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1$2;->this$1:Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1;

    # getter for: Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1;->this$0:Lcom/tencent/weibo/demo/WeiBoAPIV2Activity;
    invoke-static {v3}, Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1;->access$0(Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1;)Lcom/tencent/weibo/demo/WeiBoAPIV2Activity;

    move-result-object v3

    # getter for: Lcom/tencent/weibo/demo/WeiBoAPIV2Activity;->oAuthV2:Lcom/tencent/weibo/oauthv2/OAuthV2;
    invoke-static {v3}, Lcom/tencent/weibo/demo/WeiBoAPIV2Activity;->access$0(Lcom/tencent/weibo/demo/WeiBoAPIV2Activity;)Lcom/tencent/weibo/oauthv2/OAuthV2;

    move-result-object v3

    const-string v4, "json"

    const-string/jumbo v5, "my android custom test"

    const-string v6, "192.24.24.36"

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/tencent/weibo/api/TAPI;->add(Lcom/tencent/weibo/beans/OAuth;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1;->response:Ljava/lang/String;

    .line 90
    iget-object v1, p0, Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1$2;->this$1:Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1;

    # getter for: Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1;->this$0:Lcom/tencent/weibo/demo/WeiBoAPIV2Activity;
    invoke-static {v1}, Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1;->access$0(Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1;)Lcom/tencent/weibo/demo/WeiBoAPIV2Activity;

    move-result-object v1

    new-instance v2, Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1$2$1;

    invoke-direct {v2, p0}, Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1$2$1;-><init>(Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1$2;)V

    invoke-virtual {v1, v2}, Lcom/tencent/weibo/demo/WeiBoAPIV2Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    iget-object v1, p0, Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1$2;->this$1:Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1;

    iget-object v1, v1, Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1;->tAPI:Lcom/tencent/weibo/api/TAPI;

    invoke-virtual {v1}, Lcom/tencent/weibo/api/TAPI;->shutdownConnection()V

    .line 103
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 100
    const-string/jumbo v1, "tencent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
