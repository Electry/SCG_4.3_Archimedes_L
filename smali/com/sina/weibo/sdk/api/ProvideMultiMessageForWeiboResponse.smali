.class public Lcom/sina/weibo/sdk/api/ProvideMultiMessageForWeiboResponse;
.super Lcom/sina/weibo/sdk/api/BaseResponse;
.source "ProvideMultiMessageForWeiboResponse.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ProvideMultiMessageForWeiboResponse"


# instance fields
.field public multiMessage:Lcom/sina/weibo/sdk/api/WeiboMultiMessage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/sina/weibo/sdk/api/BaseResponse;-><init>()V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/sina/weibo/sdk/api/BaseResponse;-><init>()V

    .line 25
    invoke-virtual {p0, p1}, Lcom/sina/weibo/sdk/api/ProvideMultiMessageForWeiboResponse;->fromBundle(Landroid/os/Bundle;)V

    .line 26
    return-void
.end method


# virtual methods
.method final check(Landroid/content/Context;Lcom/sina/weibo/sdk/api/VersionCheckHandler;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Lcom/sina/weibo/sdk/api/VersionCheckHandler;

    .prologue
    const/4 v0, 0x0

    .line 43
    const-string v1, "ProvideMultiMessageForWeiboResponse"

    const-string v2, "check()"

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Lcom/sina/weibo/sdk/api/ProvideMultiMessageForWeiboResponse;->multiMessage:Lcom/sina/weibo/sdk/api/WeiboMultiMessage;

    if-nez v1, :cond_1

    .line 56
    :cond_0
    :goto_0
    return v0

    .line 49
    :cond_1
    if-eqz p2, :cond_2

    .line 50
    iget-object v1, p0, Lcom/sina/weibo/sdk/api/ProvideMultiMessageForWeiboResponse;->reqPackageName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/sina/weibo/sdk/api/VersionCheckHandler;->setPackageName(Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lcom/sina/weibo/sdk/api/ProvideMultiMessageForWeiboResponse;->multiMessage:Lcom/sina/weibo/sdk/api/WeiboMultiMessage;

    invoke-virtual {p2, p1, v1}, Lcom/sina/weibo/sdk/api/VersionCheckHandler;->check(Landroid/content/Context;Lcom/sina/weibo/sdk/api/WeiboMultiMessage;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    :cond_2
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/ProvideMultiMessageForWeiboResponse;->multiMessage:Lcom/sina/weibo/sdk/api/WeiboMultiMessage;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->checkArgs()Z

    move-result v0

    goto :goto_0
.end method

.method public fromBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/sina/weibo/sdk/api/BaseResponse;->fromBundle(Landroid/os/Bundle;)V

    .line 34
    new-instance v0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;

    invoke-direct {v0, p1}, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/ProvideMultiMessageForWeiboResponse;->multiMessage:Lcom/sina/weibo/sdk/api/WeiboMultiMessage;

    .line 35
    return-void
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x2

    return v0
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/sina/weibo/sdk/api/BaseResponse;->toBundle(Landroid/os/Bundle;)V

    .line 39
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/ProvideMultiMessageForWeiboResponse;->multiMessage:Lcom/sina/weibo/sdk/api/WeiboMultiMessage;

    invoke-virtual {v0, p1}, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->toBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 40
    return-void
.end method
