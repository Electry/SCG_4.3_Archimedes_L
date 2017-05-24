.class Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$11;
.super Landroid/os/Handler;
.source "FriendDetailWbActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)V
    .locals 0

    .prologue
    .line 1258
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$11;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private doHandleMsg(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1270
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1324
    :goto_0
    return-void

    .line 1273
    :pswitch_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$11;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mFriendDetailAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->access$000(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$11;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mStatusesUids:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->access$1400(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v5, v2, v5}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->setItems(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1274
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$11;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mFriendDetailAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->access$000(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$11;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mFriendDetailStatusesItem:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->access$300(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->setmArrShowItem(Ljava/util/ArrayList;)V

    .line 1275
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$11;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mFriendDetailAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->access$000(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->notifyDataSetChanged()V

    .line 1276
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$11;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mFriendDetailAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->access$000(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->setLoading(Z)V

    .line 1277
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$11;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mFriendDetailAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->access$000(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1278
    const-string/jumbo v1, "panhui4_FriendDetailWbActivity"

    const-string v2, "mFriendDetailAdapter is empty!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$11;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    # setter for: Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mIsFirst:Z
    invoke-static {v1, v3}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->access$1502(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;Z)Z

    .line 1292
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$11;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->setBackgroundImage()V
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->access$1600(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)V

    .line 1294
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$11;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mWbContentList:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->access$800(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->setIsRefresh(Z)V

    .line 1296
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$11;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mFriendDetailStatusesItem:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->access$300(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1297
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$11;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mFriendDetailStatusesItem:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->access$300(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 1298
    .local v0, "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$11;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrScreenName()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->updateTitleName(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->access$1700(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;Ljava/lang/String;)V

    .line 1299
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$11;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mWbHeaderView:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->access$600(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->bindData(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V

    goto/16 :goto_0

    .line 1281
    .end local v0    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    :cond_1
    const-string/jumbo v1, "panhui4_FriendDetailWbActivity"

    const-string v2, "mFriendDetailAdapter is not empty!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$11;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mIsFirst:Z
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->access$1500(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1283
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$11;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mWbContentList:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->access$800(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->moveToHigh()V

    goto :goto_1

    .line 1301
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$11;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mWbHeaderView:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->access$600(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->bindData(J)V

    .line 1302
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$11;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$11;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mScreenName:Ljava/lang/String;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->access$1800(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->updateTitleName(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->access$1700(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1308
    :pswitch_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$11;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    # setter for: Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mIsFirst:Z
    invoke-static {v1, v3}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->access$1502(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;Z)Z

    .line 1309
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$11;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mFriendDetailAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->access$000(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$11;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mFriendDetailStatusesItem:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->access$300(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->setmArrShowItem(Ljava/util/ArrayList;)V

    .line 1310
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$11;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mFriendDetailAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->access$000(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 1314
    :pswitch_2
    const-string/jumbo v1, "panhui4_FriendDetailWbActivity"

    const-string v2, "handleMessage, MSG_RESULT_OPENURL_ERROR!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$11;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$11;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    const v3, 0x7f0f073b

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->setEmptyView(Landroid/content/Context;IZ)V
    invoke-static {v1, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->access$1900(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;Landroid/content/Context;IZ)V

    goto/16 :goto_0

    .line 1270
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1262
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1264
    :try_start_0
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$11;->doHandleMsg(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1268
    :goto_0
    return-void

    .line 1265
    :catch_0
    move-exception v0

    .line 1266
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
