.class final Lcom/lenovo/scg/gallery3d/weibo/util/AsyncWeiboRunners$1;
.super Ljava/lang/Thread;
.source "AsyncWeiboRunners.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/weibo/util/AsyncWeiboRunners;->request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$httpMethod:Ljava/lang/String;

.field final synthetic val$listener:Lcom/weibo/sdk/android/net/RequestListener;

.field final synthetic val$params:Lcom/weibo/sdk/android/WeiboParameters;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Lcom/weibo/sdk/android/net/RequestListener;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/util/AsyncWeiboRunners$1;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/weibo/util/AsyncWeiboRunners$1;->val$httpMethod:Ljava/lang/String;

    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/weibo/util/AsyncWeiboRunners$1;->val$params:Lcom/weibo/sdk/android/WeiboParameters;

    iput-object p4, p0, Lcom/lenovo/scg/gallery3d/weibo/util/AsyncWeiboRunners$1;->val$listener:Lcom/weibo/sdk/android/net/RequestListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 28
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/util/AsyncWeiboRunners$1;->val$url:Ljava/lang/String;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/util/AsyncWeiboRunners$1;->val$httpMethod:Ljava/lang/String;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/util/AsyncWeiboRunners$1;->val$params:Lcom/weibo/sdk/android/WeiboParameters;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/util/AsyncWeiboRunners$1;->val$params:Lcom/weibo/sdk/android/WeiboParameters;

    const-string/jumbo v6, "pic"

    invoke-virtual {v5, v6}, Lcom/weibo/sdk/android/WeiboParameters;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/lenovo/scg/common/utils/net/HttpManagers;->openUrl(Ljava/lang/String;Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 29
    .local v1, "resp":Ljava/lang/String;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/util/AsyncWeiboRunners$1;->val$listener:Lcom/weibo/sdk/android/net/RequestListener;

    invoke-interface {v2, v1}, Lcom/weibo/sdk/android/net/RequestListener;->onComplete(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/weibo/sdk/android/WeiboException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .end local v1    # "resp":Ljava/lang/String;
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Lcom/weibo/sdk/android/WeiboException;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/util/AsyncWeiboRunners$1;->val$listener:Lcom/weibo/sdk/android/net/RequestListener;

    invoke-interface {v2, v0}, Lcom/weibo/sdk/android/net/RequestListener;->onError(Lcom/weibo/sdk/android/WeiboException;)V

    goto :goto_0
.end method
