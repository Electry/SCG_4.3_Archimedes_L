.class public Lcom/lenovo/scg/gallery3d/sharecenter/ShareParameter;
.super Ljava/lang/Object;
.source "ShareParameter.java"


# instance fields
.field httpMethod:Ljava/lang/String;

.field listener:Lcom/weibo/sdk/android/net/RequestListener;

.field params:Lcom/weibo/sdk/android/WeiboParameters;

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/weibo/sdk/android/WeiboParameters;
    .param p3, "httpMethod"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/weibo/sdk/android/net/RequestListener;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareParameter;->url:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareParameter;->params:Lcom/weibo/sdk/android/WeiboParameters;

    .line 24
    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareParameter;->httpMethod:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareParameter;->listener:Lcom/weibo/sdk/android/net/RequestListener;

    .line 26
    return-void
.end method


# virtual methods
.method public getHttpMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareParameter;->httpMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getListener()Lcom/weibo/sdk/android/net/RequestListener;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareParameter;->listener:Lcom/weibo/sdk/android/net/RequestListener;

    return-object v0
.end method

.method public getParams()Lcom/weibo/sdk/android/WeiboParameters;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareParameter;->params:Lcom/weibo/sdk/android/WeiboParameters;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareParameter;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setHttpMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "httpMethod"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareParameter;->httpMethod:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setListener(Lcom/weibo/sdk/android/net/RequestListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/weibo/sdk/android/net/RequestListener;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareParameter;->listener:Lcom/weibo/sdk/android/net/RequestListener;

    .line 58
    return-void
.end method

.method public setParams(Lcom/weibo/sdk/android/WeiboParameters;)V
    .locals 0
    .param p1, "params"    # Lcom/weibo/sdk/android/WeiboParameters;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareParameter;->params:Lcom/weibo/sdk/android/WeiboParameters;

    .line 42
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareParameter;->url:Ljava/lang/String;

    .line 34
    return-void
.end method
