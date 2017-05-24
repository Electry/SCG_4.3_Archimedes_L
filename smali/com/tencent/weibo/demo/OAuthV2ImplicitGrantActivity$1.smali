.class Lcom/tencent/weibo/demo/OAuthV2ImplicitGrantActivity$1;
.super Ljava/lang/Object;
.source "OAuthV2ImplicitGrantActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/weibo/demo/OAuthV2ImplicitGrantActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/weibo/demo/OAuthV2ImplicitGrantActivity;


# direct methods
.method constructor <init>(Lcom/tencent/weibo/demo/OAuthV2ImplicitGrantActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/weibo/demo/OAuthV2ImplicitGrantActivity$1;->this$0:Lcom/tencent/weibo/demo/OAuthV2ImplicitGrantActivity;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 68
    :goto_0
    return-void

    .line 56
    :pswitch_0
    # getter for: Lcom/tencent/weibo/demo/OAuthV2ImplicitGrantActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/tencent/weibo/demo/OAuthV2ImplicitGrantActivity;->access$0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-------------Step1: Implicit Grant--------------"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/weibo/demo/OAuthV2ImplicitGrantActivity$1;->this$0:Lcom/tencent/weibo/demo/OAuthV2ImplicitGrantActivity;

    const-class v2, Lcom/tencent/weibo/webview/OAuthV2AuthorizeWebView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "oauth"

    iget-object v2, p0, Lcom/tencent/weibo/demo/OAuthV2ImplicitGrantActivity$1;->this$0:Lcom/tencent/weibo/demo/OAuthV2ImplicitGrantActivity;

    # getter for: Lcom/tencent/weibo/demo/OAuthV2ImplicitGrantActivity;->oAuth:Lcom/tencent/weibo/oauthv2/OAuthV2;
    invoke-static {v2}, Lcom/tencent/weibo/demo/OAuthV2ImplicitGrantActivity;->access$1(Lcom/tencent/weibo/demo/OAuthV2ImplicitGrantActivity;)Lcom/tencent/weibo/oauthv2/OAuthV2;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 59
    iget-object v1, p0, Lcom/tencent/weibo/demo/OAuthV2ImplicitGrantActivity$1;->this$0:Lcom/tencent/weibo/demo/OAuthV2ImplicitGrantActivity;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/tencent/weibo/demo/OAuthV2ImplicitGrantActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 62
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_1
    # getter for: Lcom/tencent/weibo/demo/OAuthV2ImplicitGrantActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/tencent/weibo/demo/OAuthV2ImplicitGrantActivity;->access$0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-------------Step2: Test API V2--------------"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/weibo/demo/OAuthV2ImplicitGrantActivity$1;->this$0:Lcom/tencent/weibo/demo/OAuthV2ImplicitGrantActivity;

    const-class v2, Lcom/tencent/weibo/demo/WeiBoAPIV2Activity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "oauth"

    iget-object v2, p0, Lcom/tencent/weibo/demo/OAuthV2ImplicitGrantActivity$1;->this$0:Lcom/tencent/weibo/demo/OAuthV2ImplicitGrantActivity;

    # getter for: Lcom/tencent/weibo/demo/OAuthV2ImplicitGrantActivity;->oAuth:Lcom/tencent/weibo/oauthv2/OAuthV2;
    invoke-static {v2}, Lcom/tencent/weibo/demo/OAuthV2ImplicitGrantActivity;->access$1(Lcom/tencent/weibo/demo/OAuthV2ImplicitGrantActivity;)Lcom/tencent/weibo/oauthv2/OAuthV2;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 65
    iget-object v1, p0, Lcom/tencent/weibo/demo/OAuthV2ImplicitGrantActivity$1;->this$0:Lcom/tencent/weibo/demo/OAuthV2ImplicitGrantActivity;

    invoke-virtual {v1, v0}, Lcom/tencent/weibo/demo/OAuthV2ImplicitGrantActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 54
    nop

    :pswitch_data_0
    .packed-switch 0x7f050009
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
