.class Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$AuthDialogListener;
.super Ljava/lang/Object;
.source "SinaShareManager.java"

# interfaces
.implements Lcom/weibo/sdk/android/WeiboAuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AuthDialogListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

.field private who:I


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)V
    .locals 1

    .prologue
    .line 937
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$AuthDialogListener;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 935
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$AuthDialogListener;->who:I

    .line 938
    return-void
.end method

.method public constructor <init>(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;I)V
    .locals 1
    .param p2, "who"    # I

    .prologue
    .line 940
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$AuthDialogListener;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 935
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$AuthDialogListener;->who:I

    .line 941
    iput p2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$AuthDialogListener;->who:I

    .line 942
    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 1019
    const-string v0, "ShareCenter"

    const-string v1, "AuthDialogListener onCancel!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "values"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 948
    const-string v6, "code"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 949
    .local v0, "code":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 950
    const-string v6, "ShareCenter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onComplete, code="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$AuthDialogListener;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->access$900(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)Landroid/app/ProgressDialog;

    move-result-object v6

    if-nez v6, :cond_0

    .line 954
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$AuthDialogListener;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    new-instance v7, Landroid/app/ProgressDialog;

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$AuthDialogListener;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mContext:Landroid/app/Activity;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->access$400(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v6, v7}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->access$902(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 956
    :cond_0
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$AuthDialogListener;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->access$900(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)Landroid/app/ProgressDialog;

    move-result-object v6

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 957
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$AuthDialogListener;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->access$900(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 958
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$AuthDialogListener;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->access$900(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 959
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$AuthDialogListener;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->access$900(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)Landroid/app/ProgressDialog;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$AuthDialogListener;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mContext:Landroid/app/Activity;
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->access$400(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f0f0757

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 960
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$AuthDialogListener;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->access$900(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->show()V

    .line 961
    new-instance v6, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$AuthDialogListener$1;

    invoke-direct {v6, p0, v0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$AuthDialogListener$1;-><init>(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$AuthDialogListener;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$AuthDialogListener$1;->start()V

    .line 1003
    :cond_1
    :goto_0
    return-void

    .line 973
    :cond_2
    const-string v6, "access_token"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 974
    .local v4, "token":Ljava/lang/String;
    const-string v6, "expires_in"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 975
    .local v1, "expiresIn":Ljava/lang/String;
    const-string/jumbo v6, "uid"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 976
    .local v5, "uid":Ljava/lang/String;
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$AuthDialogListener;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    new-instance v7, Lcom/weibo/sdk/android/Oauth2AccessToken;

    invoke-direct {v7, v4, v1}, Lcom/weibo/sdk/android/Oauth2AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    # setter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->accessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;
    invoke-static {v6, v7}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->access$202(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;Lcom/weibo/sdk/android/Oauth2AccessToken;)Lcom/weibo/sdk/android/Oauth2AccessToken;

    .line 978
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$AuthDialogListener;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->keepToken()V

    .line 979
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "token = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", expires_in = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$AuthDialogListener;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->accessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->access$200(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)Lcom/weibo/sdk/android/Oauth2AccessToken;

    move-result-object v7

    invoke-virtual {v7}, Lcom/weibo/sdk/android/Oauth2AccessToken;->getExpiresTime()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterConstant;->logI(Ljava/lang/String;)V

    .line 981
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$AuthDialogListener;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mSinaWeiboAssisant:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboAssisant;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->access$1400(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboAssisant;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9, v4}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboAssisant;->getUserInfo(JLjava/lang/String;)V

    .line 982
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$AuthDialogListener;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mContext:Landroid/app/Activity;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->access$400(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$AuthDialogListener;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mContext:Landroid/app/Activity;
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->access$400(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f0f07e1

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 983
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$AuthDialogListener;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mContext:Landroid/app/Activity;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->access$400(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)Landroid/app/Activity;

    move-result-object v6

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.lenovo.scg.auth.success"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 984
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$AuthDialogListener;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    # invokes: Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->isPayNoAttentionToSCGWeibo()Z
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->access$500(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 985
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$AuthDialogListener;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->followSCGWeibo()V

    .line 987
    :cond_3
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$AuthDialogListener;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    iput-boolean v10, v6, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mSelected:Z

    .line 988
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$AuthDialogListener;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    iget-object v6, v6, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$AuthDialogListener;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    iget-object v6, v6, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v6, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 989
    :cond_4
    iget v6, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$AuthDialogListener;->who:I

    if-ne v6, v10, :cond_5

    .line 991
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$AuthDialogListener;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->userCenterManager:Lcom/lenovo/scg/camera/UserCenterManager;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->access$1000(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)Lcom/lenovo/scg/camera/UserCenterManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/UserCenterManager;->isFollowSuperCamera()Z

    move-result v2

    .line 992
    .local v2, "needFollowSuperCamera":Z
    const-string/jumbo v6, "usercenter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AuthDialogListener: onComplete: user center: needFollowSuperCamera = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$AuthDialogListener;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->userCenterManager:Lcom/lenovo/scg/camera/UserCenterManager;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->access$1000(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)Lcom/lenovo/scg/camera/UserCenterManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/UserCenterManager;->isFollowSuperGallery()Z

    move-result v3

    .line 994
    .local v3, "needFollowSuperGallery":Z
    const-string/jumbo v6, "usercenter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AuthDialogListener: onComplete: user center: needFollowSuperGallery = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$AuthDialogListener;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    # invokes: Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->followingCameraAndGallery(ZZ)V
    invoke-static {v6, v2, v3}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->access$1100(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;ZZ)V

    .line 997
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$AuthDialogListener;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->userCenterManager:Lcom/lenovo/scg/camera/UserCenterManager;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->access$1000(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)Lcom/lenovo/scg/camera/UserCenterManager;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/camera/UserCenterManager;->show(I)V

    .line 1000
    .end local v2    # "needFollowSuperCamera":Z
    .end local v3    # "needFollowSuperGallery":Z
    :cond_5
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1001
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$AuthDialogListener;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    # invokes: Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->getUserInfo(J)V
    invoke-static {v6, v8, v9}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->access$1200(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;J)V

    goto/16 :goto_0
.end method

.method public onError(Lcom/weibo/sdk/android/WeiboDialogError;)V
    .locals 3
    .param p1, "e"    # Lcom/weibo/sdk/android/WeiboDialogError;

    .prologue
    .line 1009
    const-string v0, "ShareCenter"

    const-string v1, "AuthDialogListener onError!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    invoke-virtual {p1}, Lcom/weibo/sdk/android/WeiboDialogError;->printStackTrace()V

    .line 1011
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$AuthDialogListener;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mContext:Landroid/app/Activity;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->access$400(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$AuthDialogListener;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mContext:Landroid/app/Activity;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->access$400(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0f0716

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1012
    return-void
.end method

.method public onWeiboException(Lcom/weibo/sdk/android/WeiboException;)V
    .locals 3
    .param p1, "e"    # Lcom/weibo/sdk/android/WeiboException;

    .prologue
    .line 1027
    const-string v0, "ShareCenter"

    const-string v1, "AuthDialogListener onWeiboException!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    invoke-virtual {p1}, Lcom/weibo/sdk/android/WeiboException;->printStackTrace()V

    .line 1029
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$AuthDialogListener;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mContext:Landroid/app/Activity;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->access$400(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$AuthDialogListener;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mContext:Landroid/app/Activity;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->access$400(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0f0716

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1030
    return-void
.end method
