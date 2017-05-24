.class Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$7;
.super Ljava/lang/Thread;
.source "WeiboHeaderWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->setFriendship(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

.field final synthetic val$uid:J


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;J)V
    .locals 0

    .prologue
    .line 807
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$7;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    iput-wide p2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$7;->val$uid:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 810
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$7;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    const-string v3, "https://api.weibo.com/2/friendships/show.json"

    const-string/jumbo v4, "target_id"

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$7;->val$uid:J

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    const/4 v12, 0x0

    const/4 v13, -0x1

    const-string v14, "GET"

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->configueOpenUrl(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    invoke-static/range {v2 .. v14}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->access$500(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 814
    .local v20, "result":Ljava/lang/String;
    if-nez v20, :cond_0

    .line 815
    const-string v2, "WeiboHeaderWidget"

    const-string v3, "get URL_FRIENDSHIPS_SHOW, result == null!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    :goto_0
    return-void

    .line 819
    :cond_0
    new-instance v17, Lcom/google/gson/Gson;

    invoke-direct/range {v17 .. v17}, Lcom/google/gson/Gson;-><init>()V

    .line 820
    .local v17, "gson":Lcom/google/gson/Gson;
    const/16 v19, 0x0

    .line 822
    .local v19, "response":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/FriendshipObject;
    :try_start_0
    const-class v2, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/FriendshipObject;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/FriendshipObject;

    move-object/from16 v19, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 831
    :goto_1
    if-nez v19, :cond_1

    .line 832
    const-string v2, "WeiboHeaderWidget"

    const-string v3, "get URL_FRIENDSHIPS_SHOW, response == null!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 823
    :catch_0
    move-exception v16

    .line 824
    .local v16, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$7;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mFormat:Ljava/text/SimpleDateFormat;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->access$600(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;)Ljava/text/SimpleDateFormat;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    .line 825
    .local v15, "date_time":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$7;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->access$700(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "wb_detail_LFStatuses_json_ex_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/lenovo/scg/common/utils/file/CacheUtils;->writeCacheData(Landroid/content/Context;Ljava/lang/String;[B)Ljava/lang/Boolean;

    .line 828
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 836
    .end local v15    # "date_time":Ljava/lang/String;
    .end local v16    # "e":Ljava/lang/Exception;
    :cond_1
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/FriendshipObject;->source:Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/FriendshipInfo;

    move-object/from16 v21, v0

    .line 838
    .local v21, "source":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/FriendshipInfo;
    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/FriendshipInfo;->getIsFollowing()Z

    move-result v18

    .line 839
    .local v18, "isFollowing":Z
    const-string v2, "WeiboHeaderWidget"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "source, followed_by="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/FriendshipInfo;->getIsFollowedBy()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", following="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$7;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    const/4 v3, 0x2

    move-object/from16 v0, v21

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->sendMassage(ILjava/lang/Object;)V
    invoke-static {v2, v3, v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->access$800(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;ILjava/lang/Object;)V

    goto/16 :goto_0
.end method
