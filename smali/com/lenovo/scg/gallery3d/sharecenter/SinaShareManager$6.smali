.class Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$6;
.super Ljava/lang/Thread;
.source "SinaShareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->getUserInfo(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

.field final synthetic val$uid:J


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;J)V
    .locals 0

    .prologue
    .line 807
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$6;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    iput-wide p2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$6;->val$uid:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 811
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    const-string v4, "SinaShareManager_getUserInfo_thread"

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 812
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$6;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    const-string v4, "https://api.weibo.com/2/users/show.json"

    const-string/jumbo v5, "uid"

    iget-wide v6, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$6;->val$uid:J

    const-string v8, "GET"

    # invokes: Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->configueOpenUrl(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    invoke-static/range {v3 .. v8}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->access$700(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 813
    .local v11, "result":Ljava/lang/String;
    new-instance v9, Lcom/google/gson/Gson;

    invoke-direct {v9}, Lcom/google/gson/Gson;-><init>()V

    .line 814
    .local v9, "gson":Lcom/google/gson/Gson;
    const/4 v10, 0x0

    .line 816
    .local v10, "response":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;
    :try_start_0
    const-class v3, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;

    invoke-virtual {v9, v11, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;

    move-object v10, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 820
    :goto_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$6;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    # invokes: Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->storeUserInfo(Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;)V
    invoke-static {v3, v10}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->access$800(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;)V

    .line 821
    return-void

    .line 817
    :catch_0
    move-exception v2

    .line 818
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
