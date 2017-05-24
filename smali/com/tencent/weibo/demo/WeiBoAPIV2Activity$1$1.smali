.class Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1$1;
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
    iput-object p1, p0, Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1$1;->this$1:Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1;

    .line 57
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1$1;)Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1$1;->this$1:Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 62
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 64
    :try_start_0
    iget-object v1, p0, Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1$1;->this$1:Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1;

    iget-object v2, p0, Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1$1;->this$1:Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1;

    iget-object v2, v2, Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1;->userAPI:Lcom/tencent/weibo/api/UserAPI;

    iget-object v3, p0, Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1$1;->this$1:Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1;

    # getter for: Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1;->this$0:Lcom/tencent/weibo/demo/WeiBoAPIV2Activity;
    invoke-static {v3}, Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1;->access$0(Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1;)Lcom/tencent/weibo/demo/WeiBoAPIV2Activity;

    move-result-object v3

    # getter for: Lcom/tencent/weibo/demo/WeiBoAPIV2Activity;->oAuthV2:Lcom/tencent/weibo/oauthv2/OAuthV2;
    invoke-static {v3}, Lcom/tencent/weibo/demo/WeiBoAPIV2Activity;->access$0(Lcom/tencent/weibo/demo/WeiBoAPIV2Activity;)Lcom/tencent/weibo/oauthv2/OAuthV2;

    move-result-object v3

    const-string v4, "json"

    invoke-virtual {v2, v3, v4}, Lcom/tencent/weibo/api/UserAPI;->info(Lcom/tencent/weibo/beans/OAuth;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1;->response:Ljava/lang/String;

    .line 65
    iget-object v1, p0, Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1$1;->this$1:Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1;

    # getter for: Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1;->this$0:Lcom/tencent/weibo/demo/WeiBoAPIV2Activity;
    invoke-static {v1}, Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1;->access$0(Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1;)Lcom/tencent/weibo/demo/WeiBoAPIV2Activity;

    move-result-object v1

    new-instance v2, Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1$1$1;

    invoke-direct {v2, p0}, Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1$1$1;-><init>(Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1$1;)V

    invoke-virtual {v1, v2}, Lcom/tencent/weibo/demo/WeiBoAPIV2Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 72
    iget-object v1, p0, Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1$1;->this$1:Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1;

    iget-object v1, v1, Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1;->userAPI:Lcom/tencent/weibo/api/UserAPI;

    invoke-virtual {v1}, Lcom/tencent/weibo/api/UserAPI;->shutdownConnection()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
