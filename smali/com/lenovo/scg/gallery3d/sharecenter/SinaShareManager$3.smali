.class Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$3;
.super Ljava/lang/Object;
.source "SinaShareManager.java"

# interfaces
.implements Lcom/weibo/sdk/android/net/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$3;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkList()V
    .locals 5

    .prologue
    .line 369
    sget-object v1, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mSPList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    monitor-enter p0

    .line 371
    :try_start_0
    sget-object v1, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mSPList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 372
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    sget-object v1, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mSPList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 375
    monitor-enter p0

    .line 376
    :try_start_1
    sget-object v1, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mSPList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareParameter;

    .line 377
    .local v0, "sParameter":Lcom/lenovo/scg/gallery3d/sharecenter/ShareParameter;
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 378
    if-eqz v0, :cond_0

    .line 379
    invoke-static {}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterUtil;->getInstance()Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterUtil;->getIsHdShare()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 380
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareParameter;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareParameter;->getParams()Lcom/weibo/sdk/android/WeiboParameters;

    move-result-object v2

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareParameter;->getHttpMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareParameter;->getListener()Lcom/weibo/sdk/android/net/RequestListener;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/weibo/util/AsyncWeiboRunners;->request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 388
    .end local v0    # "sParameter":Lcom/lenovo/scg/gallery3d/sharecenter/ShareParameter;
    :cond_0
    :goto_0
    return-void

    .line 372
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 377
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 382
    .restart local v0    # "sParameter":Lcom/lenovo/scg/gallery3d/sharecenter/ShareParameter;
    :cond_1
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareParameter;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareParameter;->getParams()Lcom/weibo/sdk/android/WeiboParameters;

    move-result-object v2

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareParameter;->getHttpMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareParameter;->getListener()Lcom/weibo/sdk/android/net/RequestListener;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/weibo/sdk/android/net/AsyncWeiboRunner;->request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    goto :goto_0
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 7
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 393
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$3;->checkList()V

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sina send : complete --> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterConstant;->logI(Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$3;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mSendReport:Lcom/lenovo/scg/gallery3d/sharecenter/SendReportListener;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$3;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mSendReport:Lcom/lenovo/scg/gallery3d/sharecenter/SendReportListener;

    new-instance v1, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$ShareResultObject;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$3;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    sget-object v3, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;->SINA:Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$3;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mContext:Landroid/app/Activity;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->access$400(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0f0884

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$ShareResultObject;-><init>(Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/SendReportListener;->onShareResult(Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$ShareResultObject;)V

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$3;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mFinishListener:Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$OnShareFinishListener;

    if-eqz v0, :cond_1

    .line 402
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$3;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mFinishListener:Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$OnShareFinishListener;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$OnShareFinishListener;->onShareFinished(Ljava/lang/Object;)V

    .line 404
    :cond_1
    return-void
.end method

.method public onComplete4binary(Ljava/io/ByteArrayOutputStream;)V
    .locals 0
    .param p1, "s"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    .line 444
    return-void
.end method

.method public onError(Lcom/weibo/sdk/android/WeiboException;)V
    .locals 8
    .param p1, "e"    # Lcom/weibo/sdk/android/WeiboException;

    .prologue
    const/4 v7, 0x0

    .line 425
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$3;->checkList()V

    .line 427
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sina send : onError --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/weibo/sdk/android/WeiboException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterConstant;->logI(Ljava/lang/String;)V

    .line 428
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$3;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mContext:Landroid/app/Activity;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->access$400(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/weibo/util/SinaWeiboErrorMsg;->getInStance(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/weibo/util/SinaWeiboErrorMsg;

    move-result-object v2

    .line 429
    .local v2, "sinaWeiboErrorMsg":Lcom/lenovo/scg/gallery3d/weibo/util/SinaWeiboErrorMsg;
    invoke-virtual {p1}, Lcom/weibo/sdk/android/WeiboException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/util/SinaWeiboErrorMsg;->getErrorCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 430
    .local v0, "error_code":Ljava/lang/String;
    invoke-virtual {v2, v0}, Lcom/lenovo/scg/gallery3d/weibo/util/SinaWeiboErrorMsg;->getErrorMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 431
    .local v1, "error_msg":Ljava/lang/String;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$3;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mSendReport:Lcom/lenovo/scg/gallery3d/sharecenter/SendReportListener;

    if-eqz v3, :cond_0

    .line 432
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$3;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mSendReport:Lcom/lenovo/scg/gallery3d/sharecenter/SendReportListener;

    new-instance v4, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$ShareResultObject;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$3;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    sget-object v6, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;->SINA:Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;

    invoke-direct {v4, v5, v6, v7, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$ShareResultObject;-><init>(Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;ZLjava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/lenovo/scg/gallery3d/sharecenter/SendReportListener;->onShareResult(Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$ShareResultObject;)V

    .line 434
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$3;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    # invokes: Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->saveDraft()V
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->access$600(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)V

    .line 436
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$3;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mFinishListener:Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$OnShareFinishListener;

    if-eqz v3, :cond_1

    .line 437
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$3;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mFinishListener:Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$OnShareFinishListener;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$OnShareFinishListener;->onShareFinished(Ljava/lang/Object;)V

    .line 439
    :cond_1
    return-void
.end method

.method public onIOException(Ljava/io/IOException;)V
    .locals 7
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    const/4 v6, 0x0

    .line 409
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$3;->checkList()V

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sina send : onIOException --> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterConstant;->logI(Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$3;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mSendReport:Lcom/lenovo/scg/gallery3d/sharecenter/SendReportListener;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$3;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mSendReport:Lcom/lenovo/scg/gallery3d/sharecenter/SendReportListener;

    new-instance v1, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$ShareResultObject;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$3;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    sget-object v3, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;->SINA:Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$3;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mContext:Landroid/app/Activity;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->access$400(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0f0885

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$ShareResultObject;-><init>(Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/SendReportListener;->onShareResult(Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$ShareResultObject;)V

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$3;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    # invokes: Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->saveDraft()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->access$600(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)V

    .line 417
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$3;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mFinishListener:Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$OnShareFinishListener;

    if-eqz v0, :cond_1

    .line 418
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$3;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mFinishListener:Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$OnShareFinishListener;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$OnShareFinishListener;->onShareFinished(Ljava/lang/Object;)V

    .line 420
    :cond_1
    return-void
.end method
