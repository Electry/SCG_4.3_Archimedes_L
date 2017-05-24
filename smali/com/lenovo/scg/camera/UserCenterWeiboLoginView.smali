.class public Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;
.super Ljava/lang/Object;
.source "UserCenterWeiboLoginView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/UserCenterWeiboLoginView$WeiboWebViewClient;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "usercenter"


# instance fields
.field private checkedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private isFollowSuperCamera:Z

.field private isFollowSuperGallery:Z

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/weibo/sdk/android/WeiboAuthListener;

.field private mLoginView:Landroid/view/View;

.field private mRootView:Landroid/widget/RelativeLayout;

.field private mSpinner:Landroid/app/ProgressDialog;

.field private mUrl:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;

.field private final mWeibo:Lcom/weibo/sdk/android/Weibo;


# direct methods
.method public constructor <init>(Landroid/widget/RelativeLayout;Lcom/weibo/sdk/android/Weibo;Landroid/content/Context;Ljava/lang/String;Lcom/weibo/sdk/android/WeiboAuthListener;)V
    .locals 1
    .param p1, "rootView"    # Landroid/widget/RelativeLayout;
    .param p2, "weibo"    # Lcom/weibo/sdk/android/Weibo;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "listener"    # Lcom/weibo/sdk/android/WeiboAuthListener;

    .prologue
    const/4 v0, 0x1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean v0, p0, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;->isFollowSuperCamera:Z

    .line 42
    iput-boolean v0, p0, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;->isFollowSuperGallery:Z

    .line 44
    new-instance v0, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView$1;-><init>(Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;->checkedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 65
    iput-object p3, p0, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;->mContext:Landroid/content/Context;

    .line 66
    iput-object p1, p0, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;->mRootView:Landroid/widget/RelativeLayout;

    .line 67
    iput-object p2, p0, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;->mWeibo:Lcom/weibo/sdk/android/Weibo;

    .line 68
    iput-object p4, p0, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;->mUrl:Ljava/lang/String;

    .line 69
    iput-object p5, p0, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;->mListener:Lcom/weibo/sdk/android/WeiboAuthListener;

    .line 71
    return-void
.end method

.method static synthetic access$002(Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;->isFollowSuperCamera:Z

    return p1
.end method

.method static synthetic access$102(Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;->isFollowSuperGallery:Z

    return p1
.end method

.method static synthetic access$300(Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;)Lcom/weibo/sdk/android/Weibo;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;->mWeibo:Lcom/weibo/sdk/android/Weibo;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;
    .param p1, "x1"    # Landroid/webkit/WebView;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;->handleRedirectUrl(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;)Lcom/weibo/sdk/android/WeiboAuthListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;->mListener:Lcom/weibo/sdk/android/WeiboAuthListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;->mSpinner:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method private handleRedirectUrl(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 168
    invoke-static {p2}, Lcom/weibo/sdk/android/util/Utility;->parseUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 170
    .local v2, "values":Landroid/os/Bundle;
    const-string v3, "error"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "error":Ljava/lang/String;
    const-string v3, "error_code"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, "error_code":Ljava/lang/String;
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 174
    iget-object v3, p0, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;->mListener:Lcom/weibo/sdk/android/WeiboAuthListener;

    invoke-interface {v3, v2}, Lcom/weibo/sdk/android/WeiboAuthListener;->onComplete(Landroid/os/Bundle;)V

    .line 181
    :goto_0
    return-void

    .line 175
    :cond_0
    const-string v3, "access_denied"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 177
    iget-object v3, p0, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;->mListener:Lcom/weibo/sdk/android/WeiboAuthListener;

    invoke-interface {v3}, Lcom/weibo/sdk/android/WeiboAuthListener;->onCancel()V

    goto :goto_0

    .line 179
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;->mListener:Lcom/weibo/sdk/android/WeiboAuthListener;

    new-instance v4, Lcom/weibo/sdk/android/WeiboException;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, v0, v5}, Lcom/weibo/sdk/android/WeiboException;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v4}, Lcom/weibo/sdk/android/WeiboAuthListener;->onWeiboException(Lcom/weibo/sdk/android/WeiboException;)V

    goto :goto_0
.end method


# virtual methods
.method public getLoginView()Landroid/view/View;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 74
    iget-object v4, p0, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 75
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f040197

    invoke-virtual {v2, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;->mLoginView:Landroid/view/View;

    .line 76
    iget-object v4, p0, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;->mLoginView:Landroid/view/View;

    const v5, 0x7f1009c7

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 77
    .local v0, "followingCamera":Landroid/widget/CheckBox;
    const-string v4, "Camera"

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-boolean v4, p0, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;->isFollowSuperCamera:Z

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 79
    iget-object v4, p0, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;->checkedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 81
    iget-object v4, p0, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;->mLoginView:Landroid/view/View;

    const v5, 0x7f1009c8

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 82
    .local v1, "followingGallery":Landroid/widget/CheckBox;
    const-string v4, "Gallery"

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-boolean v4, p0, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;->isFollowSuperGallery:Z

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 84
    iget-object v4, p0, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;->checkedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 86
    iget-object v4, p0, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;->mLoginView:Landroid/view/View;

    const v5, 0x7f1009c9

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/webkit/WebView;

    iput-object v4, p0, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;->mWebView:Landroid/webkit/WebView;

    .line 87
    iget-object v4, p0, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    .line 88
    .local v3, "mSettings":Landroid/webkit/WebSettings;
    sget-object v4, Landroid/webkit/WebSettings$ZoomDensity;->FAR:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    .line 89
    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 90
    iget-object v4, p0, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4, v6}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 91
    iget-object v4, p0, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4, v6}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 92
    iget-object v4, p0, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;->mWebView:Landroid/webkit/WebView;

    new-instance v5, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView$WeiboWebViewClient;

    invoke-direct {v5, p0, v7}, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView$WeiboWebViewClient;-><init>(Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;Lcom/lenovo/scg/camera/UserCenterWeiboLoginView$1;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 93
    iget-object v4, p0, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4, v6}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 94
    iget-object v4, p0, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4, v6}, Landroid/webkit/WebView;->setClickable(Z)V

    .line 95
    iget-object v4, p0, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;->mWebView:Landroid/webkit/WebView;

    iget-object v5, p0, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;->mUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 97
    new-instance v4, Landroid/app/ProgressDialog;

    iget-object v5, p0, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;->mSpinner:Landroid/app/ProgressDialog;

    .line 98
    iget-object v4, p0, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;->mSpinner:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v6}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    .line 99
    iget-object v4, p0, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;->mSpinner:Landroid/app/ProgressDialog;

    iget-object v5, p0, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;->mContext:Landroid/content/Context;

    const v6, 0x7f0f07c1

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v4, p0, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;->mLoginView:Landroid/view/View;

    return-object v4
.end method

.method public isFollowSuperCamera()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;->isFollowSuperCamera:Z

    return v0
.end method

.method public isFollowSuperGallery()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;->isFollowSuperGallery:Z

    return v0
.end method
