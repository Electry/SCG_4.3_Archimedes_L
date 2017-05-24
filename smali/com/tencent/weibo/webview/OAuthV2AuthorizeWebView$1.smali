.class Lcom/tencent/weibo/webview/OAuthV2AuthorizeWebView$1;
.super Landroid/webkit/WebViewClient;
.source "OAuthV2AuthorizeWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/weibo/webview/OAuthV2AuthorizeWebView;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/weibo/webview/OAuthV2AuthorizeWebView;


# direct methods
.method constructor <init>(Lcom/tencent/weibo/webview/OAuthV2AuthorizeWebView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/weibo/webview/OAuthV2AuthorizeWebView$1;->this$0:Lcom/tencent/weibo/webview/OAuthV2AuthorizeWebView;

    .line 64
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 70
    const-string v3, "OAuthV2AuthorizeWebView"

    const-string v4, "WebView onPageStarted..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const-string v3, "OAuthV2AuthorizeWebView"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "URL = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const-string v3, "access_token="

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 73
    const-string v3, "access_token="

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 74
    .local v2, "start":I
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "responseData":Ljava/lang/String;
    iget-object v3, p0, Lcom/tencent/weibo/webview/OAuthV2AuthorizeWebView$1;->this$0:Lcom/tencent/weibo/webview/OAuthV2AuthorizeWebView;

    # getter for: Lcom/tencent/weibo/webview/OAuthV2AuthorizeWebView;->oAuth:Lcom/tencent/weibo/oauthv2/OAuthV2;
    invoke-static {v3}, Lcom/tencent/weibo/webview/OAuthV2AuthorizeWebView;->access$0(Lcom/tencent/weibo/webview/OAuthV2AuthorizeWebView;)Lcom/tencent/weibo/oauthv2/OAuthV2;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/weibo/oauthv2/OAuthV2Client;->parseAccessTokenAndOpenId(Ljava/lang/String;Lcom/tencent/weibo/oauthv2/OAuthV2;)Z

    .line 76
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 77
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "oauth"

    iget-object v4, p0, Lcom/tencent/weibo/webview/OAuthV2AuthorizeWebView$1;->this$0:Lcom/tencent/weibo/webview/OAuthV2AuthorizeWebView;

    # getter for: Lcom/tencent/weibo/webview/OAuthV2AuthorizeWebView;->oAuth:Lcom/tencent/weibo/oauthv2/OAuthV2;
    invoke-static {v4}, Lcom/tencent/weibo/webview/OAuthV2AuthorizeWebView;->access$0(Lcom/tencent/weibo/webview/OAuthV2AuthorizeWebView;)Lcom/tencent/weibo/oauthv2/OAuthV2;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 78
    iget-object v3, p0, Lcom/tencent/weibo/webview/OAuthV2AuthorizeWebView$1;->this$0:Lcom/tencent/weibo/webview/OAuthV2AuthorizeWebView;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v0}, Lcom/tencent/weibo/webview/OAuthV2AuthorizeWebView;->setResult(ILandroid/content/Intent;)V

    .line 79
    invoke-virtual {p1}, Landroid/webkit/WebView;->destroyDrawingCache()V

    .line 80
    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    .line 81
    iget-object v3, p0, Lcom/tencent/weibo/webview/OAuthV2AuthorizeWebView$1;->this$0:Lcom/tencent/weibo/webview/OAuthV2AuthorizeWebView;

    invoke-virtual {v3}, Lcom/tencent/weibo/webview/OAuthV2AuthorizeWebView;->finish()V

    .line 83
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "responseData":Ljava/lang/String;
    .end local v2    # "start":I
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 84
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 91
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://open.t.qq.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 97
    :goto_0
    return-void

    .line 94
    :cond_0
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    goto :goto_0
.end method
