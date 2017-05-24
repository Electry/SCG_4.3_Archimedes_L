.class Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1$2$1;
.super Ljava/lang/Object;
.source "WeiBoAPIV2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1$2;


# direct methods
.method constructor <init>(Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1$2$1;->this$2:Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1$2;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 95
    iget-object v0, p0, Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1$2$1;->this$2:Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1$2;

    # getter for: Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1$2;->this$1:Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1;
    invoke-static {v0}, Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1$2;->access$0(Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1$2;)Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1;

    move-result-object v0

    # getter for: Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1;->this$0:Lcom/tencent/weibo/demo/WeiBoAPIV2Activity;
    invoke-static {v0}, Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1;->access$0(Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1;)Lcom/tencent/weibo/demo/WeiBoAPIV2Activity;

    move-result-object v0

    # getter for: Lcom/tencent/weibo/demo/WeiBoAPIV2Activity;->textResponse:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/tencent/weibo/demo/WeiBoAPIV2Activity;->access$1(Lcom/tencent/weibo/demo/WeiBoAPIV2Activity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1$2$1;->this$2:Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1$2;

    # getter for: Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1$2;->this$1:Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1;
    invoke-static {v2}, Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1$2;->access$0(Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1$2;)Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1;->response:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 96
    return-void
.end method
