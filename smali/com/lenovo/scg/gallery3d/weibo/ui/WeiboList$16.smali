.class Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$16;
.super Ljava/lang/Object;
.source "WeiboList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->loadDataFromDb()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)V
    .locals 0

    .prologue
    .line 2547
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$16;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 2557
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$16;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$3500(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider$WhiteList;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "user_uid"

    aput-object v6, v4, v5

    const-string v5, "isshield=1"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2560
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_2

    .line 2561
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2562
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2563
    .local v8, "arrUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 2564
    .local v9, "count":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v9, :cond_0

    .line 2565
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 2566
    .local v20, "uuid":J
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2567
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    .line 2564
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 2570
    .end local v20    # "uuid":J
    :cond_0
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->updateSinaUserIds(Ljava/util/ArrayList;)V

    .line 2572
    .end local v8    # "arrUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v9    # "count":I
    .end local v12    # "i":I
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2594
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$16;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    const/4 v3, 0x0

    # setter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mIsInsertToDb:Z
    invoke-static {v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$1902(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;Z)Z

    .line 2595
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$16;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    const/4 v3, 0x0

    # setter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mIsUpdateToDb:Z
    invoke-static {v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$2002(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;Z)Z

    .line 2635
    const-string/jumbo v2, "panhui4_WeiboList"

    const-string v3, "loadDataFromDb, time start..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2636
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$16;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$3500(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider$HomeListTime;->CONTENT_URI:Landroid/net/Uri;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->PROJECTION_TIME:[Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$3600()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 2638
    .local v11, "cursor_time":Landroid/database/Cursor;
    if-eqz v11, :cond_a

    .line 2641
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_4

    .line 2643
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$16;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$000(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/scg/common/utils/net/NetUtilitys;->isNetworkAvaliable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2644
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$16;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    const/4 v3, 0x4

    const/4 v4, 0x0

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->sendMassage(ILjava/lang/Object;)V
    invoke-static {v2, v3, v4}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$2800(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;ILjava/lang/Object;)V

    .line 2652
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 2738
    :goto_2
    return-void

    .line 2648
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$16;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    const/4 v3, 0x1

    # setter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mIsInsertToDb:Z
    invoke-static {v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$1902(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;Z)Z

    .line 2649
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$16;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    const/4 v3, 0x1

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->deleteDataFromDb(Z)V
    invoke-static {v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$2300(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;Z)V

    .line 2650
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$16;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    const/4 v3, 0x1

    const-wide/16 v4, -0x1

    const/4 v6, 0x1

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->loadFriendsStatuses(ZJI)Z
    invoke-static {v2, v3, v4, v5, v6}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$2100(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;ZJI)Z

    goto :goto_1

    .line 2656
    :cond_4
    :goto_3
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2657
    new-instance v14, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-direct {v14}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;-><init>()V

    .line 2658
    .local v14, "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    const/4 v2, 0x3

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v14, v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setStatusesId(J)V

    .line 2659
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v14, v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrUserId(J)V

    .line 2660
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrScreenName(Ljava/lang/String;)V

    .line 2661
    const/4 v2, 0x2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrHeadUri(Ljava/lang/String;)V

    .line 2662
    const/4 v2, 0x4

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrContent(Ljava/lang/String;)V

    .line 2664
    const/4 v2, 0x5

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 2665
    .local v18, "pic_urls":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2666
    const-string v2, "_"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_6

    .line 2667
    const/4 v2, 0x5

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrPicMid(Ljava/lang/String;)V

    .line 2681
    :cond_5
    :goto_4
    const/4 v2, 0x6

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrCreatedTime(Ljava/lang/String;)V

    .line 2682
    const/4 v2, 0x7

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setSource(Ljava/lang/String;)V

    .line 2683
    const/16 v2, 0x8

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    const/4 v13, 0x1

    .line 2684
    .local v13, "isTweeted":Z
    :goto_5
    invoke-virtual {v14, v13}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmIsTweeted(Z)V

    .line 2686
    const/16 v2, 0x9

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v14, v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmAttitudesCount(I)V

    .line 2687
    const/16 v2, 0xa

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v14, v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setRepostsCount(I)V

    .line 2688
    const/16 v2, 0xb

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v14, v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setCommentsCount(I)V

    .line 2690
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$16;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mTimeStatusesItem:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$600(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 2669
    .end local v13    # "isTweeted":Z
    :cond_6
    const-string v2, "_"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 2671
    .local v19, "sUrlArr":[Ljava/lang/String;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 2672
    .local v16, "listPic":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/PicInfo;>;"
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_6
    move-object/from16 v0, v19

    array-length v2, v0

    if-ge v12, v2, :cond_7

    .line 2673
    new-instance v17, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/PicInfo;

    invoke-direct/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/PicInfo;-><init>()V

    .line 2674
    .local v17, "picUrl":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/PicInfo;
    aget-object v2, v19, v12

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/PicInfo;->thumbnail_pic:Ljava/lang/String;

    .line 2675
    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2672
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 2677
    .end local v17    # "picUrl":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/PicInfo;
    :cond_7
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setPicList(Ljava/util/List;)V

    goto :goto_4

    .line 2683
    .end local v12    # "i":I
    .end local v16    # "listPic":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/PicInfo;>;"
    .end local v19    # "sUrlArr":[Ljava/lang/String;
    :cond_8
    const/4 v13, 0x0

    goto :goto_5

    .line 2692
    .end local v14    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .end local v18    # "pic_urls":Ljava/lang/String;
    :cond_9
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 2694
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$16;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mTimeStatusesItem:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$600(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_a

    .line 2695
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$16;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mTimeStatusesItem:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$600(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$16;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mTimeStatusesItem:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$600(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 2696
    .local v15, "lastItem":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$16;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    invoke-virtual {v15}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getStatusesId()J

    move-result-wide v4

    # setter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mCurrentStatusMaxId:J
    invoke-static {v2, v4, v5}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$3202(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;J)J

    .line 2713
    .end local v15    # "lastItem":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    :cond_a
    const-string/jumbo v2, "panhui4_WeiboList"

    const-string v3, "loadDataFromDb, time end..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2714
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$16;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    const/16 v3, 0x9

    const/4 v4, 0x0

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->sendMassage(ILjava/lang/Object;)V
    invoke-static {v2, v3, v4}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$2800(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;ILjava/lang/Object;)V

    goto/16 :goto_2
.end method
