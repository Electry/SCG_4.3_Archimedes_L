.class Lcom/lenovo/scg/camera/UserCenterWeiboLoginView$WeiboWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "UserCenterWeiboLoginView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WeiboWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView$WeiboWebViewClient;->this$0:Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;Lcom/lenovo/scg/camera/UserCenterWeiboLoginView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;
    .param p2, "x1"    # Lcom/lenovo/scg/camera/UserCenterWeiboLoginView$1;

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView$WeiboWebViewClient;-><init>(Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 151
    const-string/jumbo v0, "usercenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPageFinished URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView$WeiboWebViewClient;->this$0:Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;

    # getter for: Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;->mSpinner:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;->access$700(Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 158
    iget-object v0, p0, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView$WeiboWebViewClient;->this$0:Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;

    # getter for: Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;->access$800(Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 159
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 137
    const-string/jumbo v0, "usercenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPageStarted URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView$WeiboWebViewClient;->this$0:Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;

    # getter for: Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;->mWeibo:Lcom/weibo/sdk/android/Weibo;
    invoke-static {v0}, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;->access$300(Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;)Lcom/weibo/sdk/android/Weibo;

    invoke-static {}, Lcom/weibo/sdk/android/Weibo;->getRedirecturl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView$WeiboWebViewClient;->this$0:Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;

    # invokes: Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;->handleRedirectUrl(Landroid/webkit/WebView;Ljava/lang/String;)V
    invoke-static {v0, p1, p2}, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;->access$400(Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 146
    iget-object v0, p0, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView$WeiboWebViewClient;->this$0:Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;

    # getter for: Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;->mSpinner:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;->access$700(Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView$WeiboWebViewClient;->this$0:Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;

    # getter for: Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;->mListener:Lcom/weibo/sdk/android/WeiboAuthListener;
    invoke-static {v0}, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;->access$600(Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;)Lcom/weibo/sdk/android/WeiboAuthListener;

    move-result-object v0

    new-instance v1, Lcom/weibo/sdk/android/WeiboDialogError;

    invoke-direct {v1, p3, p2, p4}, Lcom/weibo/sdk/android/WeiboDialogError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/weibo/sdk/android/WeiboAuthListener;->onError(Lcom/weibo/sdk/android/WeiboDialogError;)V

    .line 133
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 162
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 163
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 116
    const-string/jumbo v0, "usercenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Redirect URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView$WeiboWebViewClient;->this$0:Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;

    # getter for: Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;->mWeibo:Lcom/weibo/sdk/android/Weibo;
    invoke-static {v0}, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;->access$300(Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;)Lcom/weibo/sdk/android/Weibo;

    invoke-static {}, Lcom/weibo/sdk/android/Weibo;->getRedirecturl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView$WeiboWebViewClient;->this$0:Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;

    # invokes: Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;->handleRedirectUrl(Landroid/webkit/WebView;Ljava/lang/String;)V
    invoke-static {v0, p1, p2}, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;->access$400(Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 125
    :goto_0
    return v4

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView$WeiboWebViewClient;->this$0:Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;

    # getter for: Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;->access$500(Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
