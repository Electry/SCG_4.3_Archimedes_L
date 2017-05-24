.class public Lcom/tencent/weibo/webview/OAuthV2AuthorizeWebView;
.super Landroid/app/Activity;
.source "OAuthV2AuthorizeWebView.java"


# static fields
.field public static final RESULT_CODE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "OAuthV2AuthorizeWebView"


# instance fields
.field private oAuth:Lcom/tencent/weibo/oauthv2/OAuthV2;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/tencent/weibo/webview/OAuthV2AuthorizeWebView;)Lcom/tencent/weibo/oauthv2/OAuthV2;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tencent/weibo/webview/OAuthV2AuthorizeWebView;->oAuth:Lcom/tencent/weibo/oauthv2/OAuthV2;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 50
    .local v2, "linearLayout":Landroid/widget/LinearLayout;
    new-instance v5, Landroid/webkit/WebView;

    invoke-direct {v5, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 51
    .local v5, "webView":Landroid/webkit/WebView;
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    invoke-virtual {p0, v2}, Lcom/tencent/weibo/webview/OAuthV2AuthorizeWebView;->setContentView(Landroid/view/View;)V

    .line 53
    invoke-virtual {p0}, Lcom/tencent/weibo/webview/OAuthV2AuthorizeWebView;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 54
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "oauth"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Lcom/tencent/weibo/oauthv2/OAuthV2;

    iput-object v6, p0, Lcom/tencent/weibo/webview/OAuthV2AuthorizeWebView;->oAuth:Lcom/tencent/weibo/oauthv2/OAuthV2;

    .line 55
    iget-object v6, p0, Lcom/tencent/weibo/webview/OAuthV2AuthorizeWebView;->oAuth:Lcom/tencent/weibo/oauthv2/OAuthV2;

    invoke-static {v6}, Lcom/tencent/weibo/oauthv2/OAuthV2Client;->generateImplicitGrantUrl(Lcom/tencent/weibo/oauthv2/OAuthV2;)Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, "urlStr":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    .line 58
    .local v4, "webSettings":Landroid/webkit/WebSettings;
    invoke-virtual {v4, v8}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 59
    invoke-virtual {v4, v8}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 60
    invoke-virtual {v5}, Landroid/webkit/WebView;->requestFocus()Z

    .line 61
    invoke-virtual {v5, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 62
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 63
    const-string v6, "OAuthV2AuthorizeWebView"

    const-string v7, "WebView Starting...."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance v0, Lcom/tencent/weibo/webview/OAuthV2AuthorizeWebView$1;

    invoke-direct {v0, p0}, Lcom/tencent/weibo/webview/OAuthV2AuthorizeWebView$1;-><init>(Lcom/tencent/weibo/webview/OAuthV2AuthorizeWebView;)V

    .line 99
    .local v0, "client":Landroid/webkit/WebViewClient;
    invoke-virtual {v5, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 100
    return-void
.end method
