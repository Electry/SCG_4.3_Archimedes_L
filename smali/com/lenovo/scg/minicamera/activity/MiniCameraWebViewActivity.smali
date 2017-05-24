.class public Lcom/lenovo/scg/minicamera/activity/MiniCameraWebViewActivity;
.super Landroid/app/Activity;
.source "MiniCameraWebViewActivity.java"


# static fields
.field public static final KEY_TYPE:Ljava/lang/String; = "type"

.field public static final KEY_URL:Ljava/lang/String; = "url"

.field private static final TAG:Ljava/lang/String; = "MiniCameraWebViewActivity"

.field public static final TYPE_HTML:I = 0x0

.field public static final TYPE_URL:I = 0x1


# instance fields
.field private mType:I

.field private mUrl:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private initFromExtras()V
    .locals 3

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/activity/MiniCameraWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 55
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/minicamera/activity/MiniCameraWebViewActivity;->mUrl:Ljava/lang/String;

    .line 56
    const-string/jumbo v1, "type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/minicamera/activity/MiniCameraWebViewActivity;->mType:I

    .line 57
    return-void
.end method

.method private initViews()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 60
    const v0, 0x7f1006ae

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/minicamera/activity/MiniCameraWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/activity/MiniCameraWebViewActivity;->mWebView:Landroid/webkit/WebView;

    .line 61
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/activity/MiniCameraWebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 63
    iget v0, p0, Lcom/lenovo/scg/minicamera/activity/MiniCameraWebViewActivity;->mType:I

    if-nez v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/activity/MiniCameraWebViewActivity;->mWebView:Landroid/webkit/WebView;

    const-string v1, ""

    iget-object v2, p0, Lcom/lenovo/scg/minicamera/activity/MiniCameraWebViewActivity;->mUrl:Ljava/lang/String;

    const-string/jumbo v3, "text/html"

    const-string/jumbo v4, "utf-8"

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget v0, p0, Lcom/lenovo/scg/minicamera/activity/MiniCameraWebViewActivity;->mType:I

    if-ne v0, v1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/activity/MiniCameraWebViewActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/activity/MiniCameraWebViewActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/minicamera/activity/MiniCameraWebViewActivity;->requestWindowFeature(I)Z

    .line 46
    const v0, 0x7f040105

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/minicamera/activity/MiniCameraWebViewActivity;->setContentView(I)V

    .line 48
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/activity/MiniCameraWebViewActivity;->initFromExtras()V

    .line 50
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/activity/MiniCameraWebViewActivity;->initViews()V

    .line 51
    return-void
.end method
