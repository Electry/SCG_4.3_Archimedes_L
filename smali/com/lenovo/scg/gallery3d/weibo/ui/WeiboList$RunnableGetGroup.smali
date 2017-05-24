.class Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$RunnableGetGroup;
.super Ljava/lang/Object;
.source "WeiboList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RunnableGetGroup"
.end annotation


# static fields
.field public static final WORK_MODE_FIRST_GET:I = 0x0

.field public static final WORK_MODE_REFRESH_LIST:I = 0x1


# instance fields
.field private mIsFinished:Z

.field private mLock:[B

.field private mWorkMode:I

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3019
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$RunnableGetGroup;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3023
    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$RunnableGetGroup;->mWorkMode:I

    .line 3024
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$RunnableGetGroup;->mLock:[B

    .line 3026
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$RunnableGetGroup;->mIsFinished:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;
    .param p2, "x1"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$1;

    .prologue
    .line 3019
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$RunnableGetGroup;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)V

    return-void
.end method


# virtual methods
.method public SetWorkMode(I)V
    .locals 0
    .param p1, "nMode"    # I

    .prologue
    .line 3031
    iput p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$RunnableGetGroup;->mWorkMode:I

    .line 3032
    return-void
.end method

.method public lastGetIsFinished()Z
    .locals 1

    .prologue
    .line 3028
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$RunnableGetGroup;->mIsFinished:Z

    return v0
.end method

.method public run()V
    .locals 27

    .prologue
    .line 3037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$RunnableGetGroup;->mLock:[B

    move-object/from16 v22, v0

    monitor-enter v22

    .line 3038
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$RunnableGetGroup;->mIsFinished:Z

    move/from16 v21, v0

    if-nez v21, :cond_0

    .line 3039
    monitor-exit v22

    .line 3159
    :goto_0
    return-void

    .line 3041
    :cond_0
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$RunnableGetGroup;->mIsFinished:Z

    .line 3042
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$RunnableGetGroup;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    move-object/from16 v21, v0

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroups:Ljava/util/ArrayList;
    invoke-static/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$4100(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Ljava/util/ArrayList;

    move-result-object v21

    if-eqz v21, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$RunnableGetGroup;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    move-object/from16 v21, v0

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroupIndexCur:I
    invoke-static/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$3900(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$RunnableGetGroup;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    move-object/from16 v23, v0

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroups:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$4100(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Ljava/util/ArrayList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_1

    .line 3043
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$RunnableGetGroup;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    move-object/from16 v21, v0

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroups:Ljava/util/ArrayList;
    invoke-static/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$4100(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Ljava/util/ArrayList;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$RunnableGetGroup;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    move-object/from16 v23, v0

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroupIndexCur:I
    invoke-static/range {v23 .. v23}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$3900(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)I

    move-result v23

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;

    .line 3044
    .local v8, "info":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;
    if-eqz v8, :cond_1

    .line 3045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$RunnableGetGroup;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    move-object/from16 v21, v0

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    # setter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroupNameCur:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$4402(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;Ljava/lang/String;)Ljava/lang/String;

    .line 3049
    .end local v8    # "info":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;
    :cond_1
    new-instance v13, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v13}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 3050
    .local v13, "params":Lcom/weibo/sdk/android/WeiboParameters;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$RunnableGetGroup;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    move-object/from16 v21, v0

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContext:Landroid/content/Context;
    invoke-static/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$000(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/weibo/util/AccessTokenKeeper;->readAccessToken(Landroid/content/Context;)Lcom/weibo/sdk/android/Oauth2AccessToken;

    move-result-object v3

    .line 3052
    .local v3, "accessToken":Lcom/weibo/sdk/android/Oauth2AccessToken;
    invoke-virtual {v3}, Lcom/weibo/sdk/android/Oauth2AccessToken;->getToken()Ljava/lang/String;

    move-result-object v15

    .line 3053
    .local v15, "sAccessToken":Ljava/lang/String;
    const-string v21, "access_token"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0, v15}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 3054
    const-string v20, "https://api.weibo.com/2/friendships/groups.json"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3055
    .local v20, "url":Ljava/lang/String;
    const/16 v17, 0x0

    .line 3057
    .local v17, "sResult":Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$RunnableGetGroup;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    move-object/from16 v21, v0

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContext:Landroid/content/Context;
    invoke-static/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$000(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Landroid/content/Context;

    move-result-object v21

    const-string v23, "GET"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2, v13}, Lcom/lenovo/scg/gallery3d/weibo/net/Utilitys;->openUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v17

    .line 3065
    :goto_1
    if-nez v17, :cond_2

    .line 3066
    :try_start_2
    const-string/jumbo v21, "panhui4_WeiboList"

    const-string v23, "mRunnableGetGroup, sResult == null!!!"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3067
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$RunnableGetGroup;->mIsFinished:Z

    .line 3068
    monitor-exit v22

    goto/16 :goto_0

    .line 3158
    .end local v3    # "accessToken":Lcom/weibo/sdk/android/Oauth2AccessToken;
    .end local v13    # "params":Lcom/weibo/sdk/android/WeiboParameters;
    .end local v15    # "sAccessToken":Ljava/lang/String;
    .end local v17    # "sResult":Ljava/lang/String;
    .end local v20    # "url":Ljava/lang/String;
    :catchall_0
    move-exception v21

    monitor-exit v22
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v21

    .line 3059
    .restart local v3    # "accessToken":Lcom/weibo/sdk/android/Oauth2AccessToken;
    .restart local v13    # "params":Lcom/weibo/sdk/android/WeiboParameters;
    .restart local v15    # "sAccessToken":Ljava/lang/String;
    .restart local v17    # "sResult":Ljava/lang/String;
    .restart local v20    # "url":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 3060
    .local v5, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v21, "get friend group error: %s"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual {v5}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3062
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 3071
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3072
    .local v6, "gson":Lcom/google/gson/Gson;
    const/4 v14, 0x0

    .line 3075
    .local v14, "response":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupObject;
    :try_start_4
    const-class v21, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupObject;

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    check-cast v0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupObject;

    move-object v14, v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3086
    :goto_2
    if-nez v14, :cond_3

    .line 3087
    :try_start_5
    const-string/jumbo v21, "panhui4_WeiboList"

    const-string v23, "mRunnableGetGroup, response == null!!!"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3088
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$RunnableGetGroup;->mIsFinished:Z

    .line 3089
    monitor-exit v22

    goto/16 :goto_0

    .line 3076
    :catch_1
    move-exception v5

    .line 3077
    .restart local v5    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$RunnableGetGroup;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    move-object/from16 v21, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\r\n"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v5}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->saveJson(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$4500(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;Ljava/lang/String;)V

    .line 3078
    const-string v21, "Weibolist get json error:%s"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual {v5}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3080
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 3081
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$RunnableGetGroup;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    move-object/from16 v21, v0

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mErrorHandler:Landroid/os/Handler;
    invoke-static/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$4600(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Landroid/os/Handler;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$RunnableGetGroup;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    move-object/from16 v23, v0

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mErrorHandler:Landroid/os/Handler;
    invoke-static/range {v23 .. v23}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$4600(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Landroid/os/Handler;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual {v5}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 3092
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v4, 0x1

    .line 3093
    .local v4, "bDel":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$RunnableGetGroup;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    move-object/from16 v21, v0

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mLockGroup:[B
    invoke-static/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$3700(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)[B

    move-result-object v23

    monitor-enter v23
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3095
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$RunnableGetGroup;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    move-object/from16 v21, v0

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroups:Ljava/util/ArrayList;
    invoke-static/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$4100(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Ljava/util/ArrayList;

    move-result-object v21

    if-nez v21, :cond_4

    .line 3096
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$RunnableGetGroup;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    move-object/from16 v21, v0

    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    # setter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroups:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$4102(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 3098
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$RunnableGetGroup;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    move-object/from16 v21, v0

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroups:Ljava/util/ArrayList;
    invoke-static/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$4100(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    .line 3100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$RunnableGetGroup;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    move-object/from16 v21, v0

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContext:Landroid/content/Context;
    invoke-static/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$000(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v24, 0x7f0f06d2

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 3102
    .local v16, "sAll":Ljava/lang/String;
    new-instance v10, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;

    invoke-direct {v10}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;-><init>()V

    .line 3103
    .local v10, "itemAll":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;->setName(Ljava/lang/String;)V

    .line 3104
    const-string v21, "-1"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;->setIdstr(Ljava/lang/String;)V

    .line 3105
    const/16 v21, -0x1

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;->setMember_count(I)V

    .line 3106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$RunnableGetGroup;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    move-object/from16 v21, v0

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroups:Ljava/util/ArrayList;
    invoke-static/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$4100(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Ljava/util/ArrayList;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3107
    iget-object v11, v14, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupObject;->lists:Ljava/util/List;

    .line 3108
    .local v11, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v18

    .line 3109
    .local v18, "size":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    move/from16 v0, v18

    if-ge v7, v0, :cond_6

    .line 3110
    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;

    .line 3112
    .restart local v8    # "info":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;
    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 3109
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 3115
    :cond_5
    new-instance v9, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;

    invoke-direct {v9}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;-><init>()V

    .line 3116
    .local v9, "item":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;
    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;->getName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;->setName(Ljava/lang/String;)V

    .line 3117
    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;->getIdstr()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;->setIdstr(Ljava/lang/String;)V

    .line 3118
    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;->getMember_count()I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;->setMember_count(I)V

    .line 3119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$RunnableGetGroup;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    move-object/from16 v21, v0

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroups:Ljava/util/ArrayList;
    invoke-static/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$4100(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Ljava/util/ArrayList;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3121
    const-string v21, "group name=%s count=%d"

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;->getName()Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;->getMember_count()I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 3141
    .end local v7    # "i":I
    .end local v8    # "info":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;
    .end local v9    # "item":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;
    .end local v10    # "itemAll":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;
    .end local v11    # "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;>;"
    .end local v16    # "sAll":Ljava/lang/String;
    .end local v18    # "size":I
    :catchall_1
    move-exception v21

    monitor-exit v23
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v21
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 3124
    .restart local v7    # "i":I
    .restart local v10    # "itemAll":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;
    .restart local v11    # "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;>;"
    .restart local v16    # "sAll":Ljava/lang/String;
    .restart local v18    # "size":I
    :cond_6
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$RunnableGetGroup;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    move-object/from16 v21, v0

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroups:Ljava/util/ArrayList;
    invoke-static/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$4100(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 3125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$RunnableGetGroup;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    move-object/from16 v21, v0

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v24

    # setter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroupIndexCur:I
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$3902(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;I)I

    .line 3126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$RunnableGetGroup;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    move-object/from16 v21, v0

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroupNameCur:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$4400(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_b

    .line 3127
    const/4 v7, 0x0

    :goto_5
    move/from16 v0, v18

    if-ge v7, v0, :cond_7

    .line 3128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$RunnableGetGroup;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    move-object/from16 v21, v0

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroups:Ljava/util/ArrayList;
    invoke-static/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$4100(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Ljava/util/ArrayList;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;

    .line 3129
    .restart local v8    # "info":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;
    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;->getName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$RunnableGetGroup;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    move-object/from16 v24, v0

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroupNameCur:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$4400(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 3130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$RunnableGetGroup;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    # setter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroupIndexCur:I
    invoke-static {v0, v7}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$3902(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;I)I

    .line 3131
    const/4 v4, 0x0

    .line 3139
    .end local v8    # "info":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;
    :cond_7
    :goto_6
    const-string v21, "after get group, group index=%d "

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$RunnableGetGroup;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    move-object/from16 v26, v0

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroupIndexCur:I
    invoke-static/range {v26 .. v26}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$3900(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3141
    monitor-exit v23
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 3143
    const/4 v12, 0x0

    .line 3144
    .local v12, "msg":Landroid/os/Message;
    :try_start_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$RunnableGetGroup;->mWorkMode:I

    move/from16 v21, v0

    if-nez v21, :cond_c

    .line 3145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$RunnableGetGroup;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    move-object/from16 v21, v0

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mHandlerGroup:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$HandlerGroup;
    invoke-static/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$4700(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$HandlerGroup;

    move-result-object v21

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$RunnableGetGroup;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    move-object/from16 v24, v0

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroups:Ljava/util/ArrayList;
    invoke-static/range {v24 .. v24}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$4100(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Ljava/util/ArrayList;

    move-result-object v24

    move-object/from16 v0, v21

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$HandlerGroup;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 3151
    :cond_8
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$RunnableGetGroup;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    move-object/from16 v21, v0

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mHandlerGroup:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$HandlerGroup;
    invoke-static/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$4700(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$HandlerGroup;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$HandlerGroup;->sendMessage(Landroid/os/Message;)Z

    .line 3153
    if-eqz v4, :cond_9

    .line 3154
    new-instance v19, Ljava/lang/Thread;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$RunnableGetGroup;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    move-object/from16 v21, v0

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mRunnableRefresh:Ljava/lang/Runnable;
    invoke-static/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$1700(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Ljava/lang/Runnable;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3155
    .local v19, "td":Ljava/lang/Thread;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Thread;->start()V

    .line 3157
    .end local v19    # "td":Ljava/lang/Thread;
    :cond_9
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$RunnableGetGroup;->mIsFinished:Z

    .line 3158
    monitor-exit v22

    goto/16 :goto_0

    .line 3127
    .end local v12    # "msg":Landroid/os/Message;
    .restart local v8    # "info":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;
    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_5

    .line 3136
    .end local v8    # "info":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;
    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_6

    .line 3147
    .restart local v12    # "msg":Landroid/os/Message;
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$RunnableGetGroup;->mWorkMode:I

    move/from16 v21, v0

    const/16 v23, 0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    .line 3148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$RunnableGetGroup;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    move-object/from16 v21, v0

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mHandlerGroup:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$HandlerGroup;
    invoke-static/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$4700(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$HandlerGroup;

    move-result-object v21

    const/16 v23, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$RunnableGetGroup;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    move-object/from16 v24, v0

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroups:Ljava/util/ArrayList;
    invoke-static/range {v24 .. v24}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$4100(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Ljava/util/ArrayList;

    move-result-object v24

    move-object/from16 v0, v21

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$HandlerGroup;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v12

    goto :goto_7
.end method
