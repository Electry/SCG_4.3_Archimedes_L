.class Lcom/tencent/weibo/webview/OAuthV1AuthorizeWebView$1;
.super Landroid/webkit/WebViewClient;
.source "OAuthV1AuthorizeWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/weibo/webview/OAuthV1AuthorizeWebView;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/weibo/webview/OAuthV1AuthorizeWebView;


# direct methods
.method constructor <init>(Lcom/tencent/weibo/webview/OAuthV1AuthorizeWebView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/weibo/webview/OAuthV1AuthorizeWebView$1;->this$0:Lcom/tencent/weibo/webview/OAuthV1AuthorizeWebView;

    .line 65
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
    .line 72
    const-string v3, "OAuthV1AuthorizeWebView"

    const-string v4, "WebView onPageStarted..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const-string v3, "OAuthV1AuthorizeWebView"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "URL = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const-string v3, "checkType=verifycode"

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 75
    const-string v3, "checkType=verifycode&v="

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v1, v3, 0x17

    .line 76
    .local v1, "start":I
    add-int/lit8 v3, v1, 0x6

    invoke-virtual {p2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, "verifyCode":Ljava/lang/String;
    iget-object v3, p0, Lcom/tencent/weibo/webview/OAuthV1AuthorizeWebView$1;->this$0:Lcom/tencent/weibo/webview/OAuthV1AuthorizeWebView;

    # getter for: Lcom/tencent/weibo/webview/OAuthV1AuthorizeWebView;->oAuth:Lcom/tencent/weibo/oauthv1/OAuthV1;
    invoke-static {v3}, Lcom/tencent/weibo/webview/OAuthV1AuthorizeWebView;->access$0(Lcom/tencent/weibo/webview/OAuthV1AuthorizeWebView;)Lcom/tencent/weibo/oauthv1/OAuthV1;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/tencent/weibo/oauthv1/OAuthV1;->setOauthVerifier(Ljava/lang/String;)V

    .line 78
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 79
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "oauth"

    iget-object v4, p0, Lcom/tencent/weibo/webview/OAuthV1AuthorizeWebView$1;->this$0:Lcom/tencent/weibo/webview/OAuthV1AuthorizeWebView;

    # getter for: Lcom/tencent/weibo/webview/OAuthV1AuthorizeWebView;->oAuth:Lcom/tencent/weibo/oauthv1/OAuthV1;
    invoke-static {v4}, Lcom/tencent/weibo/webview/OAuthV1AuthorizeWebView;->access$0(Lcom/tencent/weibo/webview/OAuthV1AuthorizeWebView;)Lcom/tencent/weibo/oauthv1/OAuthV1;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 80
    iget-object v3, p0, Lcom/tencent/weibo/webview/OAuthV1AuthorizeWebView$1;->this$0:Lcom/tencent/weibo/webview/OAuthV1AuthorizeWebView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v0}, Lcom/tencent/weibo/webview/OAuthV1AuthorizeWebView;->setResult(ILandroid/content/Intent;)V

    .line 81
    invoke-virtual {p1}, Landroid/webkit/WebView;->destroyDrawingCache()V

    .line 82
    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    .line 83
    iget-object v3, p0, Lcom/tencent/weibo/webview/OAuthV1AuthorizeWebView$1;->this$0:Lcom/tencent/weibo/webview/OAuthV1AuthorizeWebView;

    invoke-virtual {v3}, Lcom/tencent/weibo/webview/OAuthV1AuthorizeWebView;->finish()V

    .line 85
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "start":I
    .end local v2    # "verifyCode":Ljava/lang/String;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 86
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 94
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://open.t.qq.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 100
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    goto :goto_0
.end method
