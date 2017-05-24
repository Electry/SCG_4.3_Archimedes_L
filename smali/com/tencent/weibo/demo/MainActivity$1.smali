.class Lcom/tencent/weibo/demo/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/weibo/demo/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/weibo/demo/MainActivity;


# direct methods
.method constructor <init>(Lcom/tencent/weibo/demo/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/weibo/demo/MainActivity$1;->this$0:Lcom/tencent/weibo/demo/MainActivity;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 57
    :goto_0
    return-void

    .line 47
    :pswitch_0
    # getter for: Lcom/tencent/weibo/demo/MainActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/tencent/weibo/demo/MainActivity;->access$0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "---------Test OAuth V1 Webview--------"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/weibo/demo/MainActivity$1;->this$0:Lcom/tencent/weibo/demo/MainActivity;

    const-class v2, Lcom/tencent/weibo/demo/OAuthV1Activity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/tencent/weibo/demo/MainActivity$1;->this$0:Lcom/tencent/weibo/demo/MainActivity;

    invoke-virtual {v1, v0}, Lcom/tencent/weibo/demo/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 52
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_1
    # getter for: Lcom/tencent/weibo/demo/MainActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/tencent/weibo/demo/MainActivity;->access$0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "---------Test OAuth V2 ImplicitGrant--------"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/weibo/demo/MainActivity$1;->this$0:Lcom/tencent/weibo/demo/MainActivity;

    const-class v2, Lcom/tencent/weibo/demo/OAuthV2ImplicitGrantActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/tencent/weibo/demo/MainActivity$1;->this$0:Lcom/tencent/weibo/demo/MainActivity;

    invoke-virtual {v1, v0}, Lcom/tencent/weibo/demo/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 44
    :pswitch_data_0
    .packed-switch 0x7f050000
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
