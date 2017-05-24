.class final Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$12;
.super Landroid/os/Handler;
.source "SingleImageViewActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2640
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2645
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2646
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    packed-switch v11, :pswitch_data_0

    .line 2742
    :cond_0
    :goto_0
    return-void

    .line 2649
    :pswitch_0
    :try_start_0
    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->repostsCount:Landroid/widget/TextView;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$600()Landroid/widget/TextView;

    move-result-object v11

    sget-object v12, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mContext:Landroid/content/Context;

    const v13, 0x7f0f072f

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mRepostsTotalNumber:I
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$2800()I

    move-result v16

    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboUtils;->formatWeiboNumber(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2651
    sget-wide v12, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mWeiboUid:J

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-nez v11, :cond_1

    .line 2652
    sget-object v11, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mTimeAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;

    sget-object v12, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->response:Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RepostInfo;

    invoke-virtual {v12}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RepostInfo;->getRetweeted_status()Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/Retweeted_Status;

    move-result-object v12

    invoke-virtual {v12}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/Retweeted_Status;->getMid()J

    move-result-wide v12

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mRepostsTotalNumber:I
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$2800()I

    move-result v14

    invoke-virtual {v11, v12, v13, v14}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->updateRepostCount(JI)V

    goto :goto_0

    .line 2657
    :catch_0
    move-exception v11

    goto :goto_0

    .line 2654
    :cond_1
    sget-object v11, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mTimeAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;

    sget-wide v12, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mWeiboUid:J

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mRepostsTotalNumber:I
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$2800()I

    move-result v14

    invoke-virtual {v11, v12, v13, v14}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->updateRepostCount(JI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2664
    :pswitch_1
    new-instance v11, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$ThreadRepostCount;

    invoke-direct {v11}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$ThreadRepostCount;-><init>()V

    invoke-virtual {v11}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$ThreadRepostCount;->start()V

    .line 2667
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RepostInfo;

    sput-object v11, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->response:Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RepostInfo;

    .line 2668
    sget-object v11, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->response:Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RepostInfo;

    if-eqz v11, :cond_0

    .line 2670
    :try_start_1
    sget-object v11, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->response:Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RepostInfo;

    invoke-virtual {v11}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RepostInfo;->getRetweeted_status()Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/Retweeted_Status;

    move-result-object v11

    invoke-virtual {v11}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/Retweeted_Status;->getReposts_count()I

    move-result v11

    # setter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mRepostsTotalNumber:I
    invoke-static {v11}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$2802(I)I

    .line 2672
    const-string/jumbo v11, "wangdiyuan_debug_\u91cd\u590d"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mRepostsTotalNumber is : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mRepostsTotalNumber:I
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$2800()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2674
    const-string v11, "WEIBOID"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mWeiboUid is 22222 "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->response:Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RepostInfo;

    invoke-virtual {v13}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RepostInfo;->getRetweeted_status()Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/Retweeted_Status;

    move-result-object v13

    invoke-virtual {v13}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/Retweeted_Status;->getMid()J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2678
    sget-object v5, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->response:Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RepostInfo;

    .line 2679
    .local v5, "repost":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RepostInfo;
    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RepostInfo;->getUser()Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;

    move-result-object v10

    .line 2680
    .local v10, "user":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;
    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RepostInfo;->getText()Ljava/lang/String;

    move-result-object v8

    .line 2682
    .local v8, "sText":Ljava/lang/String;
    new-instance v4, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-direct {v4}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;-><init>()V

    .line 2683
    .local v4, "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getScreen_name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrScreenName(Ljava/lang/String;)V

    .line 2684
    invoke-virtual {v4, v8}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrContent(Ljava/lang/String;)V

    .line 2685
    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getProfile_image_url()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrHeadUri(Ljava/lang/String;)V

    .line 2686
    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RepostInfo;->getSource()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/lenovo/scg/gallery3d/weibo/net/Utilitys;->parseSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2687
    .local v7, "sSource":Ljava/lang/String;
    const-string/jumbo v11, "wangdiyuan"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "3  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2688
    invoke-virtual {v4, v7}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setSource(Ljava/lang/String;)V

    .line 2690
    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RepostInfo;->getCreated_at()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrCreatedTime(Ljava/lang/String;)V

    .line 2691
    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mRepostsArr:Ljava/util/ArrayList;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$1800()Ljava/util/ArrayList;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2692
    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mRepostAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$1900()Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter;->notifyDataSetChanged()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 2694
    .end local v4    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .end local v5    # "repost":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RepostInfo;
    .end local v7    # "sSource":Ljava/lang/String;
    .end local v8    # "sText":Ljava/lang/String;
    .end local v10    # "user":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;
    :catch_1
    move-exception v11

    goto/16 :goto_0

    .line 2704
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentInfo;

    .line 2705
    .local v6, "response":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentInfo;
    if-eqz v6, :cond_0

    .line 2707
    :try_start_2
    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentInfo;->getStatus()Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;

    move-result-object v11

    invoke-virtual {v11}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->getComments_count()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    # setter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mCommentsTotalNumber:I
    invoke-static {v11}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$902(I)I

    .line 2708
    sget-object v11, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mTimeAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentInfo;->getStatus()Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;

    move-result-object v12

    invoke-virtual {v12}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->getId()J

    move-result-wide v12

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mCommentsTotalNumber:I
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$900()I

    move-result v14

    invoke-virtual {v11, v12, v13, v14}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->updateCommentCount(JI)V

    .line 2710
    move-object v2, v6

    .line 2711
    .local v2, "comment":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentInfo;
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentInfo;->getUser()Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;

    move-result-object v10

    .line 2712
    .restart local v10    # "user":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentInfo;->getText()Ljava/lang/String;

    move-result-object v3

    .line 2714
    .local v3, "content":Ljava/lang/String;
    new-instance v4, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-direct {v4}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;-><init>()V

    .line 2715
    .restart local v4    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getScreen_name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrScreenName(Ljava/lang/String;)V

    .line 2716
    invoke-virtual {v4, v3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrContent(Ljava/lang/String;)V

    .line 2717
    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getProfile_image_url()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrHeadUri(Ljava/lang/String;)V

    .line 2718
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentInfo;->getId()J

    move-result-wide v12

    invoke-virtual {v4, v12, v13}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setCid(J)V

    .line 2719
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentInfo;->getStatus()Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;

    move-result-object v11

    invoke-virtual {v11}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->getId()J

    move-result-wide v12

    invoke-virtual {v4, v12, v13}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setStatusesId(J)V

    .line 2721
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentInfo;->getSource()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/lenovo/scg/gallery3d/weibo/net/Utilitys;->parseSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2722
    .local v9, "source":Ljava/lang/String;
    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$2900()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f0f0735

    const/4 v11, 0x1

    new-array v14, v11, [Ljava/lang/Object;

    const/4 v15, 0x0

    if-eqz v9, :cond_2

    move-object v11, v9

    :goto_1
    aput-object v11, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setSource(Ljava/lang/String;)V

    .line 2724
    invoke-virtual {v4, v9}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setSource(Ljava/lang/String;)V

    .line 2725
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentInfo;->getCreated_at()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrCreatedTime(Ljava/lang/String;)V

    .line 2728
    # invokes: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->UpdateList(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$3000(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V

    .line 2729
    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->commentsCount:Landroid/widget/TextView;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$800()Landroid/widget/TextView;

    move-result-object v11

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$2900()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f0f0730

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mCommentsTotalNumber:I
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$900()I

    move-result v16

    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboUtils;->formatWeiboNumber(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 2731
    .end local v2    # "comment":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentInfo;
    .end local v3    # "content":Ljava/lang/String;
    .end local v4    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .end local v9    # "source":Ljava/lang/String;
    .end local v10    # "user":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;
    :catch_2
    move-exception v11

    goto/16 :goto_0

    .line 2722
    .restart local v2    # "comment":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentInfo;
    .restart local v3    # "content":Ljava/lang/String;
    .restart local v4    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .restart local v9    # "source":Ljava/lang/String;
    .restart local v10    # "user":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;
    :cond_2
    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$2900()Landroid/content/Context;

    move-result-object v11

    const v16, 0x7f0f073d

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v11

    goto :goto_1

    .line 2646
    :pswitch_data_0
    .packed-switch 0x9001
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
