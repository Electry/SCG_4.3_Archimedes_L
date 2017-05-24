.class Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$2;
.super Ljava/lang/Object;
.source "SinaShareManager.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$ScgAuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->loginSinaWeibo()V
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
    .line 194
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$2;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public authResult(Z)V
    .locals 4
    .param p1, "isAuthorSuccess"    # Z

    .prologue
    const/4 v3, 0x1

    .line 198
    if-eqz p1, :cond_2

    .line 199
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$2;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$2;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mSinaWeiboFacade:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->access$300(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->getAccessToken()Lcom/weibo/sdk/android/Oauth2AccessToken;

    move-result-object v1

    # setter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->accessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->access$202(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;Lcom/weibo/sdk/android/Oauth2AccessToken;)Lcom/weibo/sdk/android/Oauth2AccessToken;

    .line 201
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$2;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mContext:Landroid/app/Activity;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->access$400(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$2;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mContext:Landroid/app/Activity;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->access$400(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0f07e1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 202
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$2;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mContext:Landroid/app/Activity;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->access$400(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lenovo.scg.auth.success"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 203
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$2;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    # invokes: Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->isPayNoAttentionToSCGWeibo()Z
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->access$500(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$2;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->followSCGWeibo()V

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$2;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    iput-boolean v3, v0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mSelected:Z

    .line 207
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$2;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$2;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$2;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mSinaWeiboFacade:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->access$300(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;

    move-result-object v0

    new-instance v1, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$2$1;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$2$1;-><init>(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$2;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->getLoginedUserInfo(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$GetUserInfoListener;)V

    .line 222
    :cond_2
    return-void
.end method
