.class Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$8;
.super Ljava/lang/Thread;
.source "SinaShareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->followingCameraAndGallery(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

.field final synthetic val$camera:Z

.field final synthetic val$gallery:Z


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;ZZ)V
    .locals 0

    .prologue
    .line 1058
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$8;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    iput-boolean p2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$8;->val$camera:Z

    iput-boolean p3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$8;->val$gallery:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1063
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    const-string v4, "SinaShareManager_followCameraAndGallery_thread"

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1066
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$8;->val$camera:Z

    .line 1067
    .local v1, "needFollowCamera":Z
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$8;->val$gallery:Z

    .line 1081
    .local v2, "needFollowGallery":Z
    if-eqz v1, :cond_0

    .line 1084
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$8;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mContext:Landroid/app/Activity;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->access$400(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "\u8054\u60f3\u8d85\u7ea7\u76f8\u673a"

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$8;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->accessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->access$200(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)Lcom/weibo/sdk/android/Oauth2AccessToken;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/lenovo/scg/gallery3d/weibo/util/UrlContants;->friendshipsCreate(Landroid/content/Context;Ljava/lang/String;Lcom/weibo/sdk/android/Oauth2AccessToken;)V

    .line 1085
    const-string/jumbo v3, "usercenter"

    const-string v4, "friendshipsCreate \u8054\u60f3\u8d85\u7ea7\u76f8\u673a finsh !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/weibo/sdk/android/WeiboException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1100
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 1103
    :try_start_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$8;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mContext:Landroid/app/Activity;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->access$400(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "\u8054\u60f3\u8d85\u7ea7\u76f8\u518c"

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$8;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->accessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->access$200(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)Lcom/weibo/sdk/android/Oauth2AccessToken;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/lenovo/scg/gallery3d/weibo/util/UrlContants;->friendshipsCreate(Landroid/content/Context;Ljava/lang/String;Lcom/weibo/sdk/android/Oauth2AccessToken;)V

    .line 1104
    const-string/jumbo v3, "usercenter"

    const-string v4, "friendshipsCreate \u8054\u60f3\u8d85\u7ea7\u76f8\u518c finsh !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/weibo/sdk/android/WeiboException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1119
    :cond_1
    :goto_1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 1120
    return-void

    .line 1086
    :catch_0
    move-exception v0

    .line 1088
    .local v0, "e":Lcom/weibo/sdk/android/WeiboException;
    const-string/jumbo v3, "usercenter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "friendshipsCreate \u8054\u60f3\u8d85\u7ea7\u76f8\u673a error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/weibo/sdk/android/WeiboException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$8;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mContext:Landroid/app/Activity;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->access$400(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$8$1;

    invoke-direct {v4, p0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$8$1;-><init>(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$8;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1105
    .end local v0    # "e":Lcom/weibo/sdk/android/WeiboException;
    :catch_1
    move-exception v0

    .line 1107
    .restart local v0    # "e":Lcom/weibo/sdk/android/WeiboException;
    const-string/jumbo v3, "usercenter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "friendshipsCreate \u8054\u60f3\u8d85\u7ea7\u76f8\u518c error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/weibo/sdk/android/WeiboException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$8;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mContext:Landroid/app/Activity;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->access$400(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$8$2;

    invoke-direct {v4, p0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$8$2;-><init>(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$8;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1
.end method
