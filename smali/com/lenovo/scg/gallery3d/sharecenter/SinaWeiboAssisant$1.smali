.class Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboAssisant$1;
.super Ljava/lang/Thread;
.source "SinaWeiboAssisant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboAssisant;->getUserInfo(JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboAssisant;

.field final synthetic val$uid:J


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboAssisant;J)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboAssisant$1;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboAssisant;

    iput-wide p2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboAssisant$1;->val$uid:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 90
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string v2, "SinaWeiboAssisant_getUserInfo_thread"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboAssisant$1;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboAssisant;

    const-string v2, "https://api.weibo.com/2/users/show.json"

    const-string/jumbo v3, "uid"

    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboAssisant$1;->val$uid:J

    const/4 v6, 0x0

    const-wide/16 v7, -0x1

    const-string v9, "GET"

    # invokes: Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboAssisant;->configueOpenUrl(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    invoke-static/range {v1 .. v9}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboAssisant;->access$000(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboAssisant;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 92
    .local v13, "result":Ljava/lang/String;
    new-instance v11, Lcom/google/gson/Gson;

    invoke-direct {v11}, Lcom/google/gson/Gson;-><init>()V

    .line 93
    .local v11, "gson":Lcom/google/gson/Gson;
    const/4 v12, 0x0

    .line 95
    .local v12, "response":Lcom/lenovo/scg/gallery3d/sharecenter/UserInfo;
    :try_start_0
    const-class v1, Lcom/lenovo/scg/gallery3d/sharecenter/UserInfo;

    invoke-virtual {v11, v13, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/lenovo/scg/gallery3d/sharecenter/UserInfo;

    move-object v12, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboAssisant$1;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboAssisant;

    invoke-virtual {v1, v12}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboAssisant;->storeUserInfo(Lcom/lenovo/scg/gallery3d/sharecenter/UserInfo;)V

    .line 100
    return-void

    .line 96
    :catch_0
    move-exception v10

    .line 97
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
