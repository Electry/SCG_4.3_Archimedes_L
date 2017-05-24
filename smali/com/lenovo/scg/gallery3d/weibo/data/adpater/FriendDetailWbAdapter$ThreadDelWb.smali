.class Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter$ThreadDelWb;
.super Ljava/lang/Thread;
.source "FriendDetailWbAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThreadDelWb"
.end annotation


# instance fields
.field private mItemDel:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V
    .locals 1
    .param p2, "item"    # Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .prologue
    .line 666
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter$ThreadDelWb;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 665
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter$ThreadDelWb;->mItemDel:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 667
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter$ThreadDelWb;->mItemDel:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 668
    return-void
.end method


# virtual methods
.method public run()V
    .locals 29

    .prologue
    .line 672
    invoke-super/range {p0 .. p0}, Ljava/lang/Thread;->run()V

    .line 674
    new-instance v19, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct/range {v19 .. v19}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 675
    .local v19, "params":Lcom/weibo/sdk/android/WeiboParameters;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter$ThreadDelWb;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;

    move-object/from16 v25, v0

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mContext:Landroid/content/Context;
    invoke-static/range {v25 .. v25}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->access$100(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;)Landroid/content/Context;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/lenovo/scg/gallery3d/weibo/util/AccessTokenKeeper;->readAccessToken(Landroid/content/Context;)Lcom/weibo/sdk/android/Oauth2AccessToken;

    move-result-object v4

    .line 676
    .local v4, "accessToken":Lcom/weibo/sdk/android/Oauth2AccessToken;
    invoke-virtual {v4}, Lcom/weibo/sdk/android/Oauth2AccessToken;->getToken()Ljava/lang/String;

    move-result-object v20

    .line 677
    .local v20, "sAccessToken":Ljava/lang/String;
    const-string v25, "access_token"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    const-string v25, "id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter$ThreadDelWb;->mItemDel:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getStatusesId()J

    move-result-wide v26

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 679
    const-string v23, "https://api.weibo.com/2/statuses/destroy.json"

    .line 681
    .local v23, "url":Ljava/lang/String;
    const/16 v21, 0x0

    .line 682
    .local v21, "sResult":Ljava/lang/String;
    const/4 v5, 0x0

    .line 684
    .local v5, "bSuc":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter$ThreadDelWb;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;

    move-object/from16 v25, v0

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mContext:Landroid/content/Context;
    invoke-static/range {v25 .. v25}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->access$100(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;)Landroid/content/Context;

    move-result-object v25

    const-string v26, "POST"

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    move-object/from16 v2, v26

    move-object/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/net/Utilitys;->openUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v21

    .line 685
    const/4 v5, 0x1

    .line 690
    :goto_0
    if-eqz v5, :cond_2

    const/16 v24, 0x1

    .line 691
    .local v24, "what":I
    :goto_1
    if-eqz v5, :cond_4

    .line 692
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter$ThreadDelWb;->mItemDel:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 693
    .local v12, "itemDel":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter$ThreadDelWb;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;

    move-object/from16 v25, v0

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mArrShowItem:Ljava/util/ArrayList;
    invoke-static/range {v25 .. v25}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->access$200(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;)Ljava/util/ArrayList;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v17

    .line 694
    .local v17, "nPos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter$ThreadDelWb;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;

    move-object/from16 v25, v0

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mArrShowItem:Ljava/util/ArrayList;
    invoke-static/range {v25 .. v25}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->access$200(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;)Ljava/util/ArrayList;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 695
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v6

    .line 696
    .local v6, "dataCache":Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;
    invoke-virtual {v12}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getStatusesId()J

    move-result-wide v10

    .line 697
    .local v10, "idDel":J
    invoke-virtual {v12}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getUserId()J

    move-result-wide v14

    .line 698
    .local v14, "lUserId":J
    invoke-virtual {v6, v14, v15}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getCacheFriend(J)Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$FriendItem;

    move-result-object v8

    .line 699
    .local v8, "friend":Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$FriendItem;
    if-eqz v8, :cond_4

    iget-object v0, v8, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$FriendItem;->arrItems:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    if-eqz v25, :cond_4

    .line 701
    iget v0, v8, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$FriendItem;->nTotalStatus:I

    move/from16 v25, v0

    add-int/lit8 v18, v25, -0x1

    .line 702
    .local v18, "nTotalStatus":I
    if-gez v18, :cond_0

    .line 703
    const/16 v18, 0x0

    .line 705
    :cond_0
    move/from16 v0, v18

    iput v0, v8, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$FriendItem;->nTotalStatus:I

    .line 707
    iget-object v0, v8, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$FriendItem;->arrItems:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 708
    .local v22, "size":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    move/from16 v0, v22

    if-ge v9, v0, :cond_1

    .line 709
    iget-object v0, v8, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$FriendItem;->arrItems:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 710
    .local v13, "itemOld":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    invoke-virtual {v13}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getStatusesId()J

    move-result-wide v26

    cmp-long v25, v26, v10

    if-nez v25, :cond_3

    .line 711
    iget-object v0, v8, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$FriendItem;->arrItems:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 715
    .end local v13    # "itemOld":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    :cond_1
    iget-object v0, v8, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$FriendItem;->arrItems:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 716
    const/4 v9, 0x0

    :goto_3
    move/from16 v0, v22

    if-ge v9, v0, :cond_4

    .line 717
    iget-object v0, v8, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$FriendItem;->arrItems:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 718
    .restart local v13    # "itemOld":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setStatus(I)V

    .line 716
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 686
    .end local v6    # "dataCache":Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;
    .end local v8    # "friend":Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$FriendItem;
    .end local v9    # "i":I
    .end local v10    # "idDel":J
    .end local v12    # "itemDel":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .end local v13    # "itemOld":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .end local v14    # "lUserId":J
    .end local v17    # "nPos":I
    .end local v18    # "nTotalStatus":I
    .end local v22    # "size":I
    .end local v24    # "what":I
    :catch_0
    move-exception v7

    .line 687
    .local v7, "e":Ljava/lang/Exception;
    const-string v25, "del weibo error: %s"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual {v7}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-static/range {v25 .. v26}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 688
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 690
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_2
    const/16 v24, 0x0

    goto/16 :goto_1

    .line 708
    .restart local v6    # "dataCache":Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;
    .restart local v8    # "friend":Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$FriendItem;
    .restart local v9    # "i":I
    .restart local v10    # "idDel":J
    .restart local v12    # "itemDel":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .restart local v13    # "itemOld":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .restart local v14    # "lUserId":J
    .restart local v17    # "nPos":I
    .restart local v18    # "nTotalStatus":I
    .restart local v22    # "size":I
    .restart local v24    # "what":I
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 722
    .end local v6    # "dataCache":Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;
    .end local v8    # "friend":Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$FriendItem;
    .end local v9    # "i":I
    .end local v10    # "idDel":J
    .end local v12    # "itemDel":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .end local v13    # "itemOld":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .end local v14    # "lUserId":J
    .end local v17    # "nPos":I
    .end local v18    # "nTotalStatus":I
    .end local v22    # "size":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter$ThreadDelWb;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;

    move-object/from16 v25, v0

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mHandlerDelWb:Landroid/os/Handler;
    invoke-static/range {v25 .. v25}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->access$300(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;)Landroid/os/Handler;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter$ThreadDelWb;->mItemDel:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move/from16 v1, v24

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v16

    .line 723
    .local v16, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter$ThreadDelWb;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;

    move-object/from16 v25, v0

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mHandlerDelWb:Landroid/os/Handler;
    invoke-static/range {v25 .. v25}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->access$300(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;)Landroid/os/Handler;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 724
    return-void
.end method
