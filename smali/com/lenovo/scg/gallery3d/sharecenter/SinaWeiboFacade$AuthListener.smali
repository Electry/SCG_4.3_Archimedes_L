.class Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$AuthListener;
.super Ljava/lang/Object;
.source "SinaWeiboFacade.java"

# interfaces
.implements Lcom/weibo/sdk/android/WeiboAuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AuthListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$AuthListener;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;
    .param p2, "x1"    # Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$1;

    .prologue
    .line 323
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$AuthListener;-><init>(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;)V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 384
    const-string v0, "SinaWeiboFacade"

    const-string v1, "AuthListener onCancel!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$AuthListener;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mScgAuthListener:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$ScgAuthListener;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->access$400(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;)Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$ScgAuthListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$ScgAuthListener;->authResult(Z)V

    .line 386
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "values"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 326
    const-string v3, "SinaWeiboFacade"

    const-string v4, "AuthListener onComplete!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const-string v3, "code"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, "code":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 330
    const-string v3, "SinaWeiboFacade"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onComplete, code="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$AuthListener;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->access$300(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;)Landroid/app/ProgressDialog;

    move-result-object v3

    if-nez v3, :cond_0

    .line 334
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$AuthListener;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;

    new-instance v4, Landroid/app/ProgressDialog;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$AuthListener;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mCtx:Landroid/content/Context;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->access$100(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3, v4}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->access$302(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 336
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$AuthListener;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->access$300(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;)Landroid/app/ProgressDialog;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 337
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$AuthListener;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->access$300(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 338
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$AuthListener;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->access$300(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 339
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$AuthListener;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->access$300(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;)Landroid/app/ProgressDialog;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$AuthListener;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mCtx:Landroid/content/Context;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->access$100(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0f0757

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 340
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$AuthListener;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->access$300(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    .line 341
    new-instance v3, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$AuthListener$1;

    invoke-direct {v3, p0, v0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$AuthListener$1;-><init>(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$AuthListener;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$AuthListener$1;->start()V

    .line 360
    :cond_1
    :goto_0
    return-void

    .line 352
    :cond_2
    const-string v3, "access_token"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 353
    .local v2, "token":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 354
    const-string v3, "SinaWeiboFacade"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onComplete, token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const-string v3, "expires_in"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 356
    .local v1, "expiresIn":Ljava/lang/String;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$AuthListener;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;

    const-string/jumbo v4, "uid"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mUid:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->access$602(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;Ljava/lang/String;)Ljava/lang/String;

    .line 357
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$AuthListener;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;

    # invokes: Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->saveTokenData(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v2, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->access$700(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$AuthListener;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mScgAuthListener:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$ScgAuthListener;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->access$400(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;)Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$ScgAuthListener;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$ScgAuthListener;->authResult(Z)V

    goto :goto_0
.end method

.method public onError(Lcom/weibo/sdk/android/WeiboDialogError;)V
    .locals 3
    .param p1, "e"    # Lcom/weibo/sdk/android/WeiboDialogError;

    .prologue
    .line 374
    const-string v0, "SinaWeiboFacade"

    const-string v1, "AuthListener onError!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-virtual {p1}, Lcom/weibo/sdk/android/WeiboDialogError;->printStackTrace()V

    .line 376
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$AuthListener;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mCtx:Landroid/content/Context;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->access$100(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$AuthListener;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mCtx:Landroid/content/Context;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->access$100(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0716

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 379
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$AuthListener;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mScgAuthListener:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$ScgAuthListener;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->access$400(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;)Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$ScgAuthListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$ScgAuthListener;->authResult(Z)V

    .line 380
    return-void
.end method

.method public onWeiboException(Lcom/weibo/sdk/android/WeiboException;)V
    .locals 3
    .param p1, "e"    # Lcom/weibo/sdk/android/WeiboException;

    .prologue
    .line 364
    const-string v0, "SinaWeiboFacade"

    const-string v1, "AuthListener onWeiboException!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-virtual {p1}, Lcom/weibo/sdk/android/WeiboException;->printStackTrace()V

    .line 366
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$AuthListener;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mCtx:Landroid/content/Context;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->access$100(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$AuthListener;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mCtx:Landroid/content/Context;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->access$100(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0716

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 369
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$AuthListener;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mScgAuthListener:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$ScgAuthListener;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->access$400(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;)Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$ScgAuthListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$ScgAuthListener;->authResult(Z)V

    .line 370
    return-void
.end method
