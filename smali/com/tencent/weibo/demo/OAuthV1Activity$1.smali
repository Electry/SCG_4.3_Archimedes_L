.class Lcom/tencent/weibo/demo/OAuthV1Activity$1;
.super Ljava/lang/Object;
.source "OAuthV1Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/weibo/demo/OAuthV1Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/weibo/demo/OAuthV1Activity;


# direct methods
.method constructor <init>(Lcom/tencent/weibo/demo/OAuthV1Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/weibo/demo/OAuthV1Activity$1;->this$0:Lcom/tencent/weibo/demo/OAuthV1Activity;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 121
    :goto_0
    :pswitch_0
    return-void

    .line 82
    :pswitch_1
    # getter for: Lcom/tencent/weibo/demo/OAuthV1Activity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/tencent/weibo/demo/OAuthV1Activity;->access$0()Ljava/lang/String;

    move-result-object v2

    const-string v3, "---------Step1: Get requestToken--------"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :try_start_0
    iget-object v2, p0, Lcom/tencent/weibo/demo/OAuthV1Activity$1;->this$0:Lcom/tencent/weibo/demo/OAuthV1Activity;

    iget-object v3, p0, Lcom/tencent/weibo/demo/OAuthV1Activity$1;->this$0:Lcom/tencent/weibo/demo/OAuthV1Activity;

    # getter for: Lcom/tencent/weibo/demo/OAuthV1Activity;->oAuth:Lcom/tencent/weibo/oauthv1/OAuthV1;
    invoke-static {v3}, Lcom/tencent/weibo/demo/OAuthV1Activity;->access$1(Lcom/tencent/weibo/demo/OAuthV1Activity;)Lcom/tencent/weibo/oauthv1/OAuthV1;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/weibo/oauthv1/OAuthV1Client;->requestToken(Lcom/tencent/weibo/oauthv1/OAuthV1;)Lcom/tencent/weibo/oauthv1/OAuthV1;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/weibo/demo/OAuthV1Activity;->access$2(Lcom/tencent/weibo/demo/OAuthV1Activity;Lcom/tencent/weibo/oauthv1/OAuthV1;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_1
    iget-object v2, p0, Lcom/tencent/weibo/demo/OAuthV1Activity$1;->this$0:Lcom/tencent/weibo/demo/OAuthV1Activity;

    # getter for: Lcom/tencent/weibo/demo/OAuthV1Activity;->textRequest:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/tencent/weibo/demo/OAuthV1Activity;->access$3(Lcom/tencent/weibo/demo/OAuthV1Activity;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\nrequest_token:\n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tencent/weibo/demo/OAuthV1Activity$1;->this$0:Lcom/tencent/weibo/demo/OAuthV1Activity;

    # getter for: Lcom/tencent/weibo/demo/OAuthV1Activity;->oAuth:Lcom/tencent/weibo/oauthv1/OAuthV1;
    invoke-static {v4}, Lcom/tencent/weibo/demo/OAuthV1Activity;->access$1(Lcom/tencent/weibo/demo/OAuthV1Activity;)Lcom/tencent/weibo/oauthv1/OAuthV1;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/weibo/oauthv1/OAuthV1;->getOauthToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 90
    const-string v4, "\nrequest_token_secret:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/weibo/demo/OAuthV1Activity$1;->this$0:Lcom/tencent/weibo/demo/OAuthV1Activity;

    # getter for: Lcom/tencent/weibo/demo/OAuthV1Activity;->oAuth:Lcom/tencent/weibo/oauthv1/OAuthV1;
    invoke-static {v4}, Lcom/tencent/weibo/demo/OAuthV1Activity;->access$1(Lcom/tencent/weibo/demo/OAuthV1Activity;)Lcom/tencent/weibo/oauthv1/OAuthV1;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/weibo/oauthv1/OAuthV1;->getOauthTokenSecret()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 89
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 93
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_2
    # getter for: Lcom/tencent/weibo/demo/OAuthV1Activity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/tencent/weibo/demo/OAuthV1Activity;->access$0()Ljava/lang/String;

    move-result-object v2

    const-string v3, "---------Step2: authorization--------"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    # getter for: Lcom/tencent/weibo/demo/OAuthV1Activity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/tencent/weibo/demo/OAuthV1Activity;->access$0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "start WebView intent"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/weibo/demo/OAuthV1Activity$1;->this$0:Lcom/tencent/weibo/demo/OAuthV1Activity;

    const-class v3, Lcom/tencent/weibo/webview/OAuthV1AuthorizeWebView;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "oauth"

    iget-object v3, p0, Lcom/tencent/weibo/demo/OAuthV1Activity$1;->this$0:Lcom/tencent/weibo/demo/OAuthV1Activity;

    # getter for: Lcom/tencent/weibo/demo/OAuthV1Activity;->oAuth:Lcom/tencent/weibo/oauthv1/OAuthV1;
    invoke-static {v3}, Lcom/tencent/weibo/demo/OAuthV1Activity;->access$1(Lcom/tencent/weibo/demo/OAuthV1Activity;)Lcom/tencent/weibo/oauthv1/OAuthV1;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 97
    iget-object v2, p0, Lcom/tencent/weibo/demo/OAuthV1Activity$1;->this$0:Lcom/tencent/weibo/demo/OAuthV1Activity;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/tencent/weibo/demo/OAuthV1Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 100
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_3
    # getter for: Lcom/tencent/weibo/demo/OAuthV1Activity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/tencent/weibo/demo/OAuthV1Activity;->access$0()Ljava/lang/String;

    move-result-object v2

    const-string v3, "---------Step3: getAccessToken--------"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :try_start_1
    iget-object v2, p0, Lcom/tencent/weibo/demo/OAuthV1Activity$1;->this$0:Lcom/tencent/weibo/demo/OAuthV1Activity;

    iget-object v3, p0, Lcom/tencent/weibo/demo/OAuthV1Activity$1;->this$0:Lcom/tencent/weibo/demo/OAuthV1Activity;

    # getter for: Lcom/tencent/weibo/demo/OAuthV1Activity;->oAuth:Lcom/tencent/weibo/oauthv1/OAuthV1;
    invoke-static {v3}, Lcom/tencent/weibo/demo/OAuthV1Activity;->access$1(Lcom/tencent/weibo/demo/OAuthV1Activity;)Lcom/tencent/weibo/oauthv1/OAuthV1;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/weibo/oauthv1/OAuthV1Client;->accessToken(Lcom/tencent/weibo/oauthv1/OAuthV1;)Lcom/tencent/weibo/oauthv1/OAuthV1;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/weibo/demo/OAuthV1Activity;->access$2(Lcom/tencent/weibo/demo/OAuthV1Activity;Lcom/tencent/weibo/oauthv1/OAuthV1;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 111
    :goto_2
    iget-object v2, p0, Lcom/tencent/weibo/demo/OAuthV1Activity$1;->this$0:Lcom/tencent/weibo/demo/OAuthV1Activity;

    # getter for: Lcom/tencent/weibo/demo/OAuthV1Activity;->textAccess:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/tencent/weibo/demo/OAuthV1Activity;->access$4(Lcom/tencent/weibo/demo/OAuthV1Activity;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\naccess_token:\n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tencent/weibo/demo/OAuthV1Activity$1;->this$0:Lcom/tencent/weibo/demo/OAuthV1Activity;

    # getter for: Lcom/tencent/weibo/demo/OAuthV1Activity;->oAuth:Lcom/tencent/weibo/oauthv1/OAuthV1;
    invoke-static {v4}, Lcom/tencent/weibo/demo/OAuthV1Activity;->access$1(Lcom/tencent/weibo/demo/OAuthV1Activity;)Lcom/tencent/weibo/oauthv1/OAuthV1;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/weibo/oauthv1/OAuthV1;->getOauthToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 112
    const-string v4, "\naccess_token_secret:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/weibo/demo/OAuthV1Activity$1;->this$0:Lcom/tencent/weibo/demo/OAuthV1Activity;

    # getter for: Lcom/tencent/weibo/demo/OAuthV1Activity;->oAuth:Lcom/tencent/weibo/oauthv1/OAuthV1;
    invoke-static {v4}, Lcom/tencent/weibo/demo/OAuthV1Activity;->access$1(Lcom/tencent/weibo/demo/OAuthV1Activity;)Lcom/tencent/weibo/oauthv1/OAuthV1;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/weibo/oauthv1/OAuthV1;->getOauthTokenSecret()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 111
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 108
    :catch_1
    move-exception v0

    .line 109
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 115
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_4
    # getter for: Lcom/tencent/weibo/demo/OAuthV1Activity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/tencent/weibo/demo/OAuthV1Activity;->access$0()Ljava/lang/String;

    move-result-object v2

    const-string v3, "---------Step4: Test API V1--------"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/weibo/demo/OAuthV1Activity$1;->this$0:Lcom/tencent/weibo/demo/OAuthV1Activity;

    const-class v3, Lcom/tencent/weibo/demo/WeiBoAPIV1Activity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 117
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v2, "oauth"

    iget-object v3, p0, Lcom/tencent/weibo/demo/OAuthV1Activity$1;->this$0:Lcom/tencent/weibo/demo/OAuthV1Activity;

    # getter for: Lcom/tencent/weibo/demo/OAuthV1Activity;->oAuth:Lcom/tencent/weibo/oauthv1/OAuthV1;
    invoke-static {v3}, Lcom/tencent/weibo/demo/OAuthV1Activity;->access$1(Lcom/tencent/weibo/demo/OAuthV1Activity;)Lcom/tencent/weibo/oauthv1/OAuthV1;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 118
    iget-object v2, p0, Lcom/tencent/weibo/demo/OAuthV1Activity$1;->this$0:Lcom/tencent/weibo/demo/OAuthV1Activity;

    invoke-virtual {v2, v1}, Lcom/tencent/weibo/demo/OAuthV1Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x7f050002
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
