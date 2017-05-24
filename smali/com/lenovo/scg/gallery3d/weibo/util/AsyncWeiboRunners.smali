.class public Lcom/lenovo/scg/gallery3d/weibo/util/AsyncWeiboRunners;
.super Ljava/lang/Object;
.source "AsyncWeiboRunners.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "params"    # Lcom/weibo/sdk/android/WeiboParameters;
    .param p2, "httpMethod"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/weibo/sdk/android/net/RequestListener;

    .prologue
    .line 23
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/util/AsyncWeiboRunners$1;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/lenovo/scg/gallery3d/weibo/util/AsyncWeiboRunners$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Lcom/weibo/sdk/android/net/RequestListener;)V

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/util/AsyncWeiboRunners$1;->start()V

    .line 36
    return-void
.end method
