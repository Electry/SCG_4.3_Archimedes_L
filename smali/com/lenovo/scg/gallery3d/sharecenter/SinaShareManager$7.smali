.class Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$7;
.super Landroid/os/Handler;
.source "SinaShareManager.java"


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
    .line 879
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$7;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    .line 884
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 885
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 927
    :cond_0
    :goto_0
    return-void

    .line 888
    :pswitch_0
    const-string v3, "ShareCenter"

    const-string v4, "MSG_GET_OAUTH2_TOKEN!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$7;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->access$900(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)Landroid/app/ProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$7;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->access$900(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 890
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$7;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->access$900(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 892
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$7;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mContext:Landroid/app/Activity;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->access$400(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$7;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mContext:Landroid/app/Activity;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->access$400(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0f07e1

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 893
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$7;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mContext:Landroid/app/Activity;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->access$400(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.lenovo.scg.auth.success"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 895
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$7;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    # invokes: Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->isPayNoAttentionToSCGWeibo()Z
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->access$500(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 896
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$7;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->followSCGWeibo()V

    .line 898
    :cond_2
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$7;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    iput-boolean v6, v3, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mSelected:Z

    .line 899
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$7;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$7;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 902
    :cond_3
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$7;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->userCenterManager:Lcom/lenovo/scg/camera/UserCenterManager;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->access$1000(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)Lcom/lenovo/scg/camera/UserCenterManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/UserCenterManager;->isFollowSuperCamera()Z

    move-result v0

    .line 903
    .local v0, "needFollowSuperCamera":Z
    const-string v3, "ShareCenter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AuthDialogListener: onComplete: user center: needFollowSuperCamera = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$7;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->userCenterManager:Lcom/lenovo/scg/camera/UserCenterManager;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->access$1000(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)Lcom/lenovo/scg/camera/UserCenterManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/UserCenterManager;->isFollowSuperGallery()Z

    move-result v1

    .line 905
    .local v1, "needFollowSuperGallery":Z
    const-string v3, "ShareCenter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AuthDialogListener: onComplete: user center: needFollowSuperGallery = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$7;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    # invokes: Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->followingCameraAndGallery(ZZ)V
    invoke-static {v3, v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->access$1100(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;ZZ)V

    .line 908
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$7;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->userCenterManager:Lcom/lenovo/scg/camera/UserCenterManager;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->access$1000(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)Lcom/lenovo/scg/camera/UserCenterManager;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/UserCenterManager;->show(I)V

    .line 911
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 912
    .local v2, "uid":Ljava/lang/String;
    const-string v3, "ShareCenter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_GET_OAUTH2_TOKEN, uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 914
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$7;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    # invokes: Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->getUserInfo(J)V
    invoke-static {v3, v4, v5}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->access$1200(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;J)V

    goto/16 :goto_0

    .line 920
    .end local v0    # "needFollowSuperCamera":Z
    .end local v1    # "needFollowSuperGallery":Z
    .end local v2    # "uid":Ljava/lang/String;
    :pswitch_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$7;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->access$900(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)Landroid/app/ProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$7;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->access$900(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 921
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$7;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->access$900(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 923
    :cond_4
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$7;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mContext:Landroid/app/Activity;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->access$400(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$7;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mContext:Landroid/app/Activity;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->access$400(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0f0716

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 885
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
